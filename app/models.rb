module Blog
  module Models
    class NotFound < StandardError; end

    autoload :Entry, 'app/models/entry'
    autoload :Author, 'app/models/author'
    autoload :Player, 'app/models/player'
    autoload :Play, 'app/models/play'
    autoload :Game, 'app/models/game'
  end
end