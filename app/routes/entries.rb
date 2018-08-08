module Blog
  module Routes
    class Entries < Base
      error Models::NotFound do
        error 404
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
      end

      get '/apple-touch-icon*' do
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
        @post = Post.find!(params[:slug])
        erb :post
      end

      get '/' do
        @posts = Post.paginate
        erb :index
      end
    end
  end
end