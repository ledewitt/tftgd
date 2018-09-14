require 'pathname'

module Blog
  module Models
    class GamePlay < ActiveRecord::Base

      belongs_to :entry
      
    end
  end
end