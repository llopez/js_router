Js Router
=========

### Introduction:

This is a Rails Engine for Rails3.

Map your rails url helpers into javascript functions.

### Installation:

Add to your Gemfile.

    gem 'js_router', :git => 'git://github.com/llopez/js_router.git'

Then:

    $ bundle

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

    posts_path()      => /posts 
    new_post_path()   => /posts/new
    post_path(1)      => /posts/1
    edit_post_path(1) => /posts/1/edit

Or with extra params:

    post_path(1, {name: 'john', type: 'person'})  => /posts/1?name=john&type=person

You may do. (for example)

    :javascript
      location.href = new_post_path
      location.href = post_path(1)
      location.href = post_path(1, {other: 'an other param'})

### Testing

    rake test
    
### TODO

More Object Oriented JavaScript.