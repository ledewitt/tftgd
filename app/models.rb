module Blog
  module Models
    class NotFound < StandardError; end

    autoload :Entry, 'app/models/entry'
    autoload :GamePlay, 'app/models/game_play'
  end
end