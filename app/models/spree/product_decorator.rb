module Spree
  Product.class_eval do
    delegate :youtube_url, to: :master
  end
end
