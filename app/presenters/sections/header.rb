module Sections
  class Header < Section
    # Build from a page presenter, then apply overrides
    def self.for(page, overrides = {})
      new({
        company_name: page.company_name,
        logo_url:     page.logo_url,
        root_path:    page.root_path,
        nav_links:    page.nav_links,   # [{ title:, url: }]
        login_link:   page.login_link   # { title:, url: }
      }.deep_merge(overrides))
    end
  end
end
