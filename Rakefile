require 'fileutils'

namespace :snappy do
  desc "Sets up Snappy for editing"
  task :init do
    ROOT_DIR = File.dirname(__FILE__)
    sh "bower install"
    FileUtils.cp "#{ROOT_DIR}/source/bower_components/foundation/scss/foundation/_settings.scss", "#{ROOT_DIR}/source/assets/stylesheets/_foundation_settings.scss"
    puts "\nSnappy is ready for editing!"
  end

  desc "Update your Middleman template with the latest Snappy repo"
  task :update do
    FileUtils.rm_r "#{Dir.home}/.middleman/snappy" if File.exist? "#{Dir.home}/.middleman/snappy"
    sh "git clone https://github.com/corewebdesign/snappy.git ~/.middleman/snappy"
  end
end
