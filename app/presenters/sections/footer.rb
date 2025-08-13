# app/presenters/sections/footer.rb
# frozen_string_literal: true

module Sections
  class Footer < Section
    # Build from the page presenter, allow overrides
    def self.for(page, overrides = {})
      new({
        company_name: page.company_name,
        year:         (Time.zone || Time).now.year,
        nav_links:    page.nav_links, # reuse main nav
        legal_links: [
          { title: "Privacy Policy",   url: "#" },
          { title: "Terms of Service", url: "#" }
        ]
      }.deep_merge(overrides))
    end
  end
end
