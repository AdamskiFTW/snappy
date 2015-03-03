require 'font-awesome-sass'

compass_config do |config|
  config.add_import_path "bower_components/foundation/scss"
  config.add_import_path "bower_components/bourbon/app/assets/stylesheets"
  config.http_path = "/"
  config.css_dir = "stylesheets"
  config.sass_dir = "stylesheets"
  config.images_dir = "images"
  config.javascripts_dir = "javascripts"
end

helpers do
  def nav_active(page)
    current_page.path == page ? {:class => "active"} : {}
  end
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :development do
  activate :livereload
end

configure :build do
  # activate :minify_css
  # activate :minify_javascript
  # activate :imageoptim
end

after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end
