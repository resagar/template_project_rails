# frozen_string_literal: true

module Buttons
  class ButtonComponent < ViewComponent::Base
    include TwMergeHelper

    def initialize(options = {})
      @type = options[:type]
      @url_path = options[:url_path]
      @color = options[:color]
      @class_name = options[:class_name]
      @html_options = variant_color.merge(options[:html_options] || {})
    end
    

    private
    def variant_color
      case @color
      when :primary
        { class: tw_merge("btn btn-primary", @class_name) }
      when :secondary
        { class: tw_merge("btn btn-secondary", @class_name) }
      when :accent
        { class: tw_merge("btn btn-accent", @class_name) }
      else
        { class: tw_merge("btn btn-ghost", @class_name) }
      end
    end
  end
end
