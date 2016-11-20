Deface::Override.new(virtual_path: 'spree/admin/variants/_form',
  name: 'add_youtube_url_to_variant_edit',
  insert_before: "div.clear",
  text: "
  <fieldset class='no-border-top no-border-bottom'>
    <div class='row'>
      <div class='col-xs-3'>
        <div class='field'>
          <%= f.field_container :youtube_url do %>
            <%= f.label :youtube_url, Spree.t(:youtube_url) %>
            <%= f.text_field :youtube_url, value: @product.youtube_url, class: 'full-width' %>
            <%= f.error_message_on :youtube_url %>
          <% end %>
        </div>
      </div>
    </div>
  </fieldset>
  ")
