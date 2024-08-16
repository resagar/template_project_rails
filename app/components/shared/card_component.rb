# frozen_string_literal: true

module Shared
  class CardComponent < ViewComponent::Base
    erb_template <<~ERB
      <div class="card card-bordered shadow-xl pt-8<%= @classes %>">
          <%= content %>
      </div>
    ERB

    def initialize(classes = "")
      @classes = classes
    end

  end
end
