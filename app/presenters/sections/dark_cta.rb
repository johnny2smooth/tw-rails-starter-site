module Sections
  class DarkCta < Section
    # Matches _dark_cta locals:
    #   title, copy, primary:{text,url,html_options}, secondary:{…}, image:{src,alt,class}
    def self.for(page, overrides = {})
      new(defaults_for(page).deep_merge(overrides))
    end

    def self.defaults_for(page)
      {
        title: "Boost your productivity. Start using our app today.",
        copy:  "Ac euismod vel sit maecenas id pellentesque eu sed consectetur. Malesuada adipiscing sagittis vel nulla.",

        primary: {
          text: "Get started",
          url:  page.page_path("product"),
          html_options: {
            class: "rounded-md bg-white px-3.5 py-2.5 text-sm font-semibold text-gray-900 shadow-xs hover:bg-gray-100 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-white"
          }
        },
        secondary: {
          text: "Learn more →",
          url:  page.page_path("features"),
          html_options: {
            class: "text-sm/6 font-semibold text-white hover:text-gray-100"
          }
        },

        image: {
          src:   "https://tailwindcss.com/plus-assets/img/component-images/dark-project-app-screenshot.png",
          alt:   "App screenshot",
          class: "absolute top-0 left-0 w-228 max-w-none rounded-md bg-white/5 ring-1 ring-white/10"
        }
      }
    end
  end
end
