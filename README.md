# Snappy - Middleman Template #

Snappy is a [Middleman](http://middlemanapp.com/) template for super fast prototyping. Maintained by [Core](http://wearecore.co.uk/).

## v4 ##
Currently untested in Middleman v4, however there shouldn't be any major issues.

## Features ##

* [ZURB Foundation](http://foundation.zurb.com/)
* [HAML](http://haml.info/)
* [SASS](http://sass-lang.com/)
* [Coffeescript](http://coffeescript.org/)
* [Bourbon](http://bourbon.io/)
* [Font Awesome](http://fortawesome.github.io/Font-Awesome/)
* [Middleman Imageoptim](https://github.com/plasticine/middleman-imageoptim)
* [Middleman Google Analytics](https://github.com/danielbayerlein/middleman-google-analytics)
* [Capistrano](http://capistranorb.com/)

## Usage ##

Install [Middleman](http://middlemanapp.com/)

`gem install middleman`

Clone Snappy into your Middleman templates folder. You can then create a new template with the `--template` flag.

`git clone https://github.com/corewebdesign/snappy.git ~/.middleman/snappy`

`middleman init your-projects-name --template=snappy`

## Initialise Snappy ##
`bundle install`

This will install the required gems

`rake snappy:init`

This will run `bower install` which will install the latest versions of Foundation and Bourbon (you will need to have [Bower](http://bower.io/) installed first). It will also copy Foundations `_settings.scss` file over to your stylesheets directory for easy editing.

There's also a rake task to update your local template. Running `rake snappy:update` will delete the template in your ~/.middleman directory and clone the latest repo.

## Initialise Capistrano ##
`bundle exec cap install`

This will create all the necessary files in your project. Feel free to skip this part if not using Capistrano for deployment. Don't forget to edit the deploy files with your server info!

## Launch Middleman ##
`bundle exec middleman server`

Edit away!

## Info ##
Site titles and meta descriptions can be set in the frontmatter but if nothing is supplied these will fallback to the site title stored in data/settings.yml. GA tracking code is also set here and any site-wide config variables should be stored within this file.

JS is structured into a namespaced pattern - this might be confusing at first but it's a much better way of structuring Javascript in your app. Try to split it up into modular components as opposed to lumping everything into one file.

Gzip is enabled on build but you will need to configure your server for it to work properly - view the Middleman site for more details.

Bower is setup with sprockets - use it!

Google Analytics is provided by the Middleman extension - this is set in the config and can be enabled in the layout files using the `google_analytics_universal_tag`, the code is already there just uncomment it if needed.

We've created this template with Snappy prototyping in mind - any suggestions on how to improve it would be welcome, feel free to send a pull request! A huge thanks to the Middleman community for making all of this possible, building static sites wouldn't be half as fun without you :)

## License ##

Created and maintained by [Core](http://wearecore.co.uk/). Distributed under the [MIT license](LICENSE.md).
