require 'pathname'

module Blog
  module Models
    class Game_Play < ActiveRecord::Base

      belongs_to :entry
      
    end
  end
end