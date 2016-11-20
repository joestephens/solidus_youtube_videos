Deface::Override.new(virtual_path: 'spree/admin/products/_form',
  name: 'add_youtube_url_to_product_edit',
  insert_after: "erb[loud]:contains('text_field :sku')",
  text: "
    <% unless @product.has_variants? %>
      <%= f.field_container :youtube_url do %>
        <%= f.label :youtube_url, Spree.t(:youtube_url) %>
        <%= f.text_field :youtube_url, value: @product.youtube_url %>
        <%= f.error_message_on :youtube_url %>
      <% end %>
    <% end %>
  ")
