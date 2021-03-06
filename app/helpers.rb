module Blog
  module Helpers

    def bullshit(shit)
      "<b>#{shit}</b>"
    end

    def title
      value = yield_content(:title)
      value.blank? ? 'Blog' : value
    end

    def test_flag
      ENV['test_flag'] ? '-test' : ''
    end

    def url
      request.url
    end

    def description
      value = yield_content(:description)
      value.blank? ? '' : (value + '...')
    end

    def paginate_next_url
      number = Integer(params[:number] || 0)
      "/page/#{number + 1}"
    end

    def paginate_previous_url
      number = Integer(params[:number] || 0)
      "/page/#{number - 1}"
    end

    def paginate_previous?
      params[:number].to_i > 0
    end

    def paginate_next?(items, limit = 1)
      items.length >= limit
    end

    ::Date::DATE_FORMATS[:short_ordinal] = lambda { |date|
      day_format = ActiveSupport::Inflector.ordinalize(date.day)
      date.strftime("%b #{day_format}, %Y") # => "Dec 25th, 2007"
    }
  end
end
