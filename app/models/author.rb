require 'pathname'

module Blog
  module Models
    class Author < ActiveRecord::Base
      
      has_many :posts

    end
  end
end