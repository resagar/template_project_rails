# frozen_string_literal: true

class MainContainerComponent < ViewComponent::Base
  erb_template <<-ERB
    <div class="container mx-auto h-[100dvh] grid grid-rows-[auto_1fr_auto]">
      <%= content %>
    </div>
  ERB
end
