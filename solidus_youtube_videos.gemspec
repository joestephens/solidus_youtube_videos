# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_youtube_videos/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_youtube_videos'
  s.version     = SolidusYoutubeVideos::VERSION
  s.summary     = 'YouTube video player on Product page'
  s.description = 'Add a YouTube video player to individual product pages.'
  s.license     = 'BSD-3-Clause'

  s.author    = 'Joe Stephens'
  s.email     = 'joe.stephens@live.co.uk'
  s.homepage  = 'https://github.com/joestephens'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'solidus_core', '<= 2.11.3'
end
