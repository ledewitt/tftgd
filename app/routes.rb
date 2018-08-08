module Blog
  module Routes
    autoload :Assets, 'app/routes/assets'
    autoload :Base, 'app/routes/base'
    autoload :Static, 'app/routes/static'
    autoload :Entries, 'app/routes/entries'
  end
end