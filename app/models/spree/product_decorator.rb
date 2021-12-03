# frozen_string_literal: true

Spree::Product.class_eval do
  has_many :videos, -> { order('created_at ASC') }, :as => :watchable
end
