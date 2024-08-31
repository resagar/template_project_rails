# frozen_string_literal: true

class Landing::Sections::Buttons::CtaButtonComponent < ViewComponent::Base
  def initialize(options)
    @url = options[:url]
    @class_name = options[:class_name]
  end
end
