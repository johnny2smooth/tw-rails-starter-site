class CompanyPagePresenter < PagePresenter
  def leadership_section(overrides = {})
    return Sections::Leadership.for(self, overrides).to_h if overrides.any?
    @leadership_section ||= Sections::Leadership.for(self).to_h
  end

  def stats_section(overrides = {})
    return Sections::Stats.for(self, overrides).to_h if overrides.any?
    @stats_section ||= Sections::Stats.for(self).to_h
  end

  def testimonial_section(overrides = {})
    return Sections::Testimonial.for(self, overrides).to_h if overrides.any?
    @testimonial_section ||= Sections::Testimonial.for(self).to_h
  end

  def cta_section(overrides = {})
    return Sections::DarkCta.for(self, overrides).to_h if overrides.any?
    @cta_section ||= Sections::DarkCta.for(self).to_h
  end
end
