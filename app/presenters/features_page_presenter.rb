class FeaturesPagePresenter < PagePresenter
  def workflow_section(overrides = {})
    return Sections::Workflow.for(self, overrides).to_h if overrides.any?
    @workflow_section ||= Sections::Workflow.for(self).to_h
  end

  def pricing_section(overrides = {})
    return Sections::Pricing.for(self, overrides).to_h if overrides.any?
    @pricing_section ||= Sections::Pricing.for(self).to_h
  end

  def blog_section(overrides = {})
    return Sections::Blog.for(self, overrides).to_h if overrides.any?
    @blog_section ||= Sections::Blog.for(self).to_h
  end
end
