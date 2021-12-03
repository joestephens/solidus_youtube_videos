module Spree
  class Video < ActiveRecord::Base
    belongs_to :watchable, :polymorphic => true, :touch => true

    validates_presence_of :youtube_ref
    validates_uniqueness_of :youtube_ref, :scope => [:watchable_id, :watchable_type]

    after_validation do
      youtube_ref.match(/(v=|\/)([\w-]+)(&.+)?$/) { |m| self.youtube_ref = m[2] }
    end
  end
end
