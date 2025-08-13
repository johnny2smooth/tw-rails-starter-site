# frozen_string_literal: true

module Sections
  class Section
    include Rails.application.routes.url_helpers
    def default_url_options; {} end

    # Override in subclasses
    def self.defaults = {}

    def initialize(overrides = {})
      base = self.class.defaults.deep_dup
      @locals = base.deep_merge(overrides)
    end

    def to_h = @locals
    alias locals to_h
  end
end
