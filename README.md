Js Router
=========

### Introduction:

This is a Rails Engine for Rails3.

Map your rails url helpers into javascript.

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

You can do:

    jsRouter.postsPath()     => /posts
    jsRouter.newPostPath()   => /posts/new
    jsRouter.postPath(1)     => /posts/1
    jsRouter.editPostPath(1) => /posts/1/edit

Or with extra params:

    postPath(1, {name: 'john', type: 'person'})  => /posts/1?name=john&type=person

### Testing

    rake test
    
### TODO

Generate urls with domain.

### Author

llopez (Luis Lopez).