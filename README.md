Solidus YouTube Videos
====================

Simple extension to add a YouTube video field to Solidus product listings so videos can be displayed in the view.

Installation
------------

Add solidus_youtube_videos to your Gemfile:

```ruby
gem 'solidus_youtube_videos'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_youtube_videos:install
```

Usage
------------

You can access the field inside the Product view files like so:

```ruby
@product.youtube_url
```
