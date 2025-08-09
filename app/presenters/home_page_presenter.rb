# app/presenters/home_page_presenter.rb
class HomePagePresenter < PagePresenter
  # HERO — page-specific
  def hero_banner_section(overrides = {})
    return Sections::HeroBanner.for(self, overrides).to_h if overrides.any?
    @hero_banner_section ||= Sections::HeroBanner.for(self).to_h
  end

  # NEWSLETTER — lives here because Home shows it
  def newsletter_section(overrides = {})
    return Sections::Newsletter.new(overrides).to_h if overrides.any?
    @newsletter_section ||= Sections::Newsletter.new.to_h
  end
end
