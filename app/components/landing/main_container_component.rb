# frozen_string_literal: true

class Landing::MainContainerComponent < ViewComponent::Base
  erb_template <<-ERB
    <div class="h-[100dvh] grid grid-rows-[auto_1fr_auto]">
      <%= content %>
    </div>
  ERB
end
