class AddYoutubeUrlToSpreeProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_products, :youtube_url, :text
  end
end
