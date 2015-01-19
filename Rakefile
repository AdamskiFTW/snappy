require 'fileutils'

namespace :snappy do
  desc "Sets up Snappy for editing"
  task :init do
    sh "bower install"
    ROOT_DIR = File.dirname(__FILE__)
    FileUtils.cp "#{ROOT_DIR}/source/bower_components/foundation/scss/foundation/_settings.scss", "#{ROOT_DIR}/source/stylesheets/_foundation_settings.scss"
    puts "\nSnappy is ready for editing!"
  end
end