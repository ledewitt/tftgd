require 'pathname'

module Blog
  module Models
    class Session < ActiveRecord::Base

      belongs_to :post
      
    end
  end
end