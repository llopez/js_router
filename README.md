Js Router
=========

### Introduction:

This is a Rails Engine for Rails3.

Map your rails url helpers into javascript functions.

### Instalation:

Add to your Gemfile.

    gem 'js_router', :git => 'git://github.com/llopez/js_router.git'

### Dependencies:

This engine uses the yui-compressor gem for compact javascripts.

    gem install yui-compressor
    
### Setup:

In your application layout.

    javascript_include_tag '/javascripts/routes', 'application'
    
### Now you can do:

If your config/routes.rb file looks like this:

    YourApp::Application.routes.draw do
      resources :posts
    end

Map to:

    posts_path
    new_post_path
    post_path(1)
    edit_post_path(1)

You may do. (for example)

    :javascript
      location.href = new_post_path

### Testing

    rake test
