# app/presenters/product_page_presenter.rb
class ProductPagePresenter
  # Allow use of *_path helpers inside presenters
  include Rails.application.routes.url_helpers

  # Needed if you ever call *_url; can be empty for *_path
  def default_url_options
    {}
  end

  # Delegate shared header/footer to HomePagePresenter
  def nav_section
    HomePagePresenter.new.nav_section
  end

  def footer_section
    HomePagePresenter.new.footer_section
  end

  # ———————————————————————————————————————————————
  # Page-specific hero/banner
  # ———————————————————————————————————————————————
  def hero_banner_section
    HomePagePresenter.new.hero_banner_section
  end

  # …other sections (features_section, pricing_section, etc.) reuse HomePagePresenter
  def features_section
    HomePagePresenter.new.feature_section
  end

  def pricing_section
    HomePagePresenter.new.pricing_section
  end

  def testimonial_section
    HomePagePresenter.new.testimonial_section
  end

  def blog_section
    HomePagePresenter.new.blog_section
  end
end
