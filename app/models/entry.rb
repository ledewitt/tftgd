require 'pathname'

module Blog
  module Models
    class Entry < ActiveRecord::Base

      has_many :sessions

      def self.paginate(number = 0, limit = 1)
        page = number * limit
        all[page..(page + limit)] || []
      end

      def render
        body
      end

    end
  end
end