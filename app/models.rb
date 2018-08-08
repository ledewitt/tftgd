module Blog
  module Models
    class NotFound < StandardError; end

    autoload :Post, 'app/models/post'
    autoload :Author, 'app/models/author'
    autoload :Player, 'app/models/player'
    autoload :Play, 'app/models/play'
    autoload :Game, 'app/models/game'
  end
end