module Blog
  module Routes
    class Base < Sinatra::Application
      configure do
        set :views, App.settings.views
        set :root, App.settings.root

        disable :method_override
        disable :protection
        disable :static

        set :erb, escape_html: true,
                  layout_options: {views: 'app/views/layouts'}

        enable :use_code
      end

      register Extensions::Assets
      helpers Helpers
      helpers Sinatra::ContentFor

      get '/assets/*' do
        env['PATH_INFO'].sub!(%r{^/assets}, '')
        settings.assets.call(env)
      end

      error Models::NotFound do
        error 404
      end

      get '/entry/:entry_id/session/new' do
        entry = Entry.find(params[:entry_id])
      end

      get '/entry/new' do
        erb :new_entry
      end

      post '/entry/create' do
        p params
        entry = Entry.new(params[:entry])
        p entry
        entry.save
        erb :new_entry
        # TODO erb redirect to a "Want to add a session type page?"
      end

      get '/apple-touch-icon*' do
        404
      end

      get '/favicon.ico' do
        404
      end

      get '/feed', provides: 'application/atom+xml' do
        @posts = Post.all
        builder :feed
      end

      get '/page/:number' do
        number = Integer(params[:number])
        @posts = Post.paginate(number)

        erb :index
      end

      get '/:slug' do
        @entry = Entry.find(params[:slug])
        erb :post
      end

      get '/' do
        @posts= Entry.paginate
        erb :index
      end
    end
  end
end