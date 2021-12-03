# frozen_string_literal: true

Spree::Product.class_eval do
  has_many :videos, -> { order('position_id ASC') }, :as => :watchable
end
