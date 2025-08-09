# frozen_string_literal: true

class PagePresenter
  include Rails.application.routes.url_helpers
  def default_url_options; {} end
  # --- site identity / nav ---
  def company_name = "Your Company"
  def logo_url     = "https://tailwindcss.com/plus-assets/img/logos/mark.svg?color=indigo&shade=600"
  def root_path    = page_path("home")
  def nav_links
    [
      { title: "Product",     url: page_path("product")     },
      { title: "Features",    url: page_path("features")    },
      { title: "Company",     url: page_path("company")     }
    ]
  end
  def login_link = { title: "Log in", url: page_path("sign-in") }

  # --- sections (memoized; allow inline overrides) ---
  def header_section(overrides = {})
    return Sections::Header.for(self, overrides).to_h if overrides.any?
    @header_section ||= Sections::Header.for(self).to_h
  end

  def footer_section(overrides = {})
    return Sections::Footer.for(self, overrides).to_h if overrides.any?
    @footer_section ||= Sections::Footer.for(self).to_h
  end

  # NOTE: move page-specific sections (e.g., newsletter) into their page presenters.
end
