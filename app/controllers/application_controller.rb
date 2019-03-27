class ApplicationController < ActionController::Base
  def index
    render inline: <<~ERB
    <% 400.times do %>
      <%= c "nested_yielder" %>
    <% end %>
    ERB
  end
end
