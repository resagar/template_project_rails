# frozen_string_literal: true

module Shared
  class CardComponent < ViewComponent::Base
    erb_template <<~ERB
      <div class="<%= helpers.tw_merge('card card-bordered p-8 rounded-3xl', @class_name) %>">
          <%= content %> 
      </div>
    ERB

    def initialize(options = {})
      @class_name = options[:class_name]
    end

  end
end
