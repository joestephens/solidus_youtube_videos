module SolidusYoutubeVideos
  module Generators
    class InstallGenerator < Rails::Generators::Base
      class_option :auto_run_migrations, type: :boolean, default: false

      def copy_initializer_file
        copy_file 'spree_videos.rb', "config/initializers/spree_videos.rb"
      end

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=solidus_youtube_videos'
      end

      def run_migrations
        run_migrations = options[:auto_run_migrations] || ['', 'y', 'Y'].include?(ask('Would you like to run the migrations now? [Y/n]'))
        if run_migrations
          run 'bundle exec rake db:migrate'
        else
          puts 'Skipping rake db:migrate, don\'t forget to run it!'
        end
      end
    end
  end
end
