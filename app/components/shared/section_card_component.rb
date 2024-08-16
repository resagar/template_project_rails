# frozen_string_literal: true

module Shared
  class SectionCardComponent < ViewComponent::Base
    erb_template <<-ERB
        <section class="h-full w-full flex flex-col justify-center items-center">
            <%= content %>
        </section>
    ERB
  end
end
