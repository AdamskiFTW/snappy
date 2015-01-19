require 'font-awesome-sass'

activate :imageoptim

configure :development do
  activate :livereload
end

compass_config do |config|
  config.add_import_path "bower_components/foundation/scss"
  config.http_path = "/"
  config.css_dir = "stylesheets"
  config.sass_dir = "stylesheets"
  config.images_dir = "images"
  config.javascripts_dir = "javascripts"
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

helpers do
  def nav_active(page)
    current_page.path == page ? {:class => "active"} : {}
  end
end

after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end

configure :build do
  # activate :minify_css
  # activate :minify_javascript
end