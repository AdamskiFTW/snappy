# Snappy - Middleman Template #

Snappy is a [Middleman](http://middlemanapp.com/) template for super fast prototyping. Maintained by [Core](http://wearecore.co.uk/).

## Features ##

* [ZURB Foundation](http://foundation.zurb.com/)
* [HAML](http://haml.info/)
* [SASS](http://sass-lang.com/)
* [Coffeescript](http://coffeescript.org/)
* [Font Awesome](http://fortawesome.github.io/Font-Awesome/)
* [Middleman Imageoptim](https://github.com/plasticine/middleman-imageoptim)
* [Capistrano](http://capistranorb.com/)

## Usage ##

Install [Middleman](http://middlemanapp.com/)

`gem install middleman`

Clone into your Middleman templates folder. You can then create a new template based on Snappy with the `--template` flag.

`git clone https://github.com/corewebdesign/snappy.git ~/.middleman/snappy`

## Create your project ##
`middleman init your-project --template=snappy`

## Initialise Snappy ##
`bundle install`

This will install the required gems

`rake snappy:init`

This will run `bower install` which will install the latest version of Foundation (you will need to have [Bower](http://bower.io/) installed first). It will also copy Foundations `_settings.scss` file over to your stylesheets directory for easy editing.

## Initialise Capistrano ##
`bundle exec cap install`

This will create all the necessary files in your project. Feel free to skip this part if not using Capistrano for deployment. Don't forget to edit the deploy files with your server info!

## Launch Middleman ##
`bundle exec middleman server`

Edit away!