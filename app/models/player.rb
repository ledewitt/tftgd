require 'pathname'

module Blog
  module Models
    class Player < ActiveRecord::Base

      has_and_belongs_to_many :plays

    end
  end
end