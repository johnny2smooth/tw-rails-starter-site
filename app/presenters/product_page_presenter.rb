# app/presenters/product_page_presenter.rb
class ProductPagePresenter < PagePresenter
  # Features overview (title, copy, bullets, image)
  def feature_section(overrides = {})
    return Sections::Feature.for(self, overrides).to_h if overrides.any?
    @feature_section ||= Sections::Feature.for(self).to_h
  end

  # Pricing table (two tiers by default)
  def pricing_section(overrides = {})
    return Sections::Pricing.for(self, overrides).to_h if overrides.any?
    @pricing_section ||= Sections::Pricing.for(self).to_h
  end

  # Bento card grid (4 cards by default)
  def bento_card_section(overrides = {})
    return Sections::BentoCard.for(self, overrides).to_h if overrides.any?
    @bento_card_section ||= Sections::BentoCard.for(self).to_h
  end
end
