# frozen_string_literal: true

class Landing::ContainerComponent < ViewComponent::Base
  erb_template <<~ERB
    <section class="<%= helpers.tw_merge('w-full max-w-7xl mx-auto', @class_name) %>">
      <%= content %>
    </section>
  ERB

  def initialize(options = {})
    @class_name = options["class_name"]
  end
end
