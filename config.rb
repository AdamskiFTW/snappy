# Requires
require 'font-awesome-sass'

# Helper methods
helpers do
  
end

# Asset locations
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'
set :partials_dir, 'shared'

compass_config do |config|
  config.add_import_path "bower_components/foundation/scss"
  config.add_import_path "bower_components/bourbon/app/assets/stylesheets"
  config.http_path = "/"
  config.css_dir = "assets/stylesheets"
  config.sass_dir = "assets/stylesheets"
  config.images_dir = "assets/images"
  config.javascripts_dir = "assets/javascripts"
end

# Development config
configure :development do
  activate :livereload
end

# Build specific config
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :imageoptim
  activate :asset_hash
  activate :gzip
end

after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end

# Analytics config (tracking code set in data/settings.yml)
activate :google_analytics do |ga|
  ga.tracking_id = data.settings.google_analytics.tracking_code
  ga.debug = false
  ga.development = false
  ga.minify = true
end
