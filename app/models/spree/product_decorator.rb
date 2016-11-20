module Spree
  Product.class_eval do
    belongs_to :master, :youtube_url
  end
end
