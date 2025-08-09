# app/presenters/sections/section.rb
class Section
  include Rails.application.routes.url_helpers
  def default_url_options; {} end

  def initialize(overrides = {})
    @locals = self.class.defaults.deep_merge(overrides)
  end

  def locals = @locals
  alias to_h locals

  # override in subclasses
  def self.defaults = {}
end
