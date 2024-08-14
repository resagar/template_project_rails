# frozen_string_literal: true

module Buttons
  class ButtonComponent < ViewComponent::Base

    def initialize(type, url_path, color, classes, html_options: {})
      @type = type
      @url_path = url_path
      @color = color
      @classes = classes
      @html_options = variant_color.merge(html_options)
    end

    private
    def variant_color
      case @color
      when :primary
        { class: "btn btn-primary#{@classes}" }
      when :secondary
        { class: "btn btn-secondary#{@classes}" }
      when :accent
        { class: "btn btn-accent#{@classes}" }
      else
        { class: "btn btn-ghost#{@classes}" }
      end
    end
  end
end
