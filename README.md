Js Router
=========

### Introduction:

This is a Rails Engine.

### Instalation:

Add to your Gemfile.

    gem 'js_router', :git => 'git://github.com/llopez/js_router.git'
    
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