# app/presenters/sections/hero_banner.rb
# frozen_string_literal: true

module Sections
  class HeroBanner < Section
    # Build from a page presenter so we can use its URL helpers/paths
    def self.for(page, overrides = {})
      new(defaults_for(page).deep_merge(overrides))
    end

    # Defaults mirror your original Tailwind hero
    def self.defaults_for(page)
      {
        announcement: {
          text:      "Announcing our next round of funding.",
          link_text: "Read more →",
          link_url:  "#" # change if you have a real page for this
        },
        title:    "Data to enrich your online business",
        subtitle: "Anim aute id magna aliqua ad ad non deserunt sunt. Qui irure qui lorem cupidatat commodo. Elit sunt amet fugiat veniam occaecat.",
        primary: {
          text: "Get started",
          url:  page.page_path("product"),
          html_options: {
            class: "rounded-md bg-indigo-600 px-3.5 py-2.5 text-sm font-semibold text-white shadow-xs hover:bg-indigo-500 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
          }
        },
        secondary: {
          text: "Learn more →",
          url:  page.page_path("features"),
          html_options: {
            class: "text-sm/6 font-semibold text-gray-900"
          }
        }
      }
    end
  end
end
