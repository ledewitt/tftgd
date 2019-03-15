## Sinatra Example Blog

This is a good example of structuring a Sinatra app.
Feel free to clone it, browse the source, customize it
and use it as your own blog.

Good examples of the following:

* Using Sinatra routes as middleware
* GZip and caching
* RSS feed of posts
* Sprockets and asset management
* Markdown and Erb
* Unicorn and Heroku
* Stylus

Demo here http://sinatra-example-blog.herokuapp.com

## Pre-Install

  brew install memcached
  brew services start memcached

## Running

  bundle install
  bundle exec thin start

### Special instructions

The CSS has duplicate entries for most of the site, which will cause obvious
color changes.  This should help point out how things move around, when the site
is edited.  To enable this, set an environment variable called 'test_flag'.

Example:

`test_flag=hi bundle exec thin start`