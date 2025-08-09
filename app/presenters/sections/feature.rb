# app/presenters/sections/feature.rb
module Sections
  class Feature < Section
    def self.for(page, overrides = {})
      new(defaults_for(page).deep_merge(overrides))
    end

    # Matches _feature locals:
    # • eyebrow, headline, copy
    # • features: [{ title:, description:, icon_svg: }]
    # • image: { src:, alt:, class: }
    def self.defaults_for(_page)
      {
        eyebrow:  "Deploy faster",
        headline: "A better workflow",
        copy:     "Aliquet nec orci mattis amet quisque ullamcorper neque, nibh sem. At arcu, sit dui mi, nibh dui, diam eget aliquam.",

        features: [
          {
            title:       "Push to deploy",
            description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque.",
            icon_svg: <<~SVG
              <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true" class="mt-1 size-5 flex-none text-indigo-600">
                <path d="M5.5 17a4.5 4.5 0 0 1-1.44-8.765 4.5 4.5 0 0 1 8.302-3.046 3.5 3.5 0 0 1 4.504 4.272A4 4 0 0 1 15 17H5.5Zm3.75-2.75a.75.75 0 0 0 1.5 0V9.66l1.95 2.1a.75.75 0 1 0 1.1-1.02l-3.25-3.5a.75.75 0 0 0-1.1 0l-3.25 3.5a.75.75 0 1 0 1.1 1.02l1.95-2.1v4.59Z"/>
              </svg>
            SVG
          },
          {
            title:       "SSL certificates",
            description: "Anim aute id magna aliqua ad ad non deserunt sunt. Qui irure qui lorem cupidatat commodo.",
            icon_svg: <<~SVG
              <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true" class="mt-1 size-5 flex-none text-indigo-600">
                <path d="M10 1a4.5 4.5 0 0 0-4.5 4.5V9H5a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2v-6a2 2 0 0 0-2-2h-.5V5.5A4.5 4.5 0 0 0 10 1Zm3 8V5.5a3 3 0 1 0-6 0V9h6Z"/>
              </svg>
            SVG
          },
          {
            title:       "Database backups",
            description: "Ac tincidunt sapien vehicula erat auctor pellentesque rhoncus. Et magna sit morbi lobortis.",
            icon_svg: <<~SVG
              <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true" class="mt-1 size-5 flex-none text-indigo-600">
                <path d="M4.632 3.533A2 2 0 0 1 6.577 2h6.846a2 2 0 0 1 1.945 1.533l1.976 8.234A3.489 3.489 0 0 0 16 11.5H4c-.476 0-.93.095-1.344.267l1.976-8.234Z" />
                <path d="M4 13a2 2 0 1 0 0 4h12a2 2 0 1 0 0-4H4Zm11.24 2a.75.75 0 0 1 .75-.75H16a.75.75 0 0 1 .75.75v.01a.75.75 0 0 1-.75.75h-.01a.75.75 0 0 1-.75-.75V15Zm-2.25-.75a.75.75 0 0 0-.75.75v.01c0 .414.336.75.75.75H13a.75.75 0 0 0 .75-.75V15a.75.75 0 0 0-.75-.75h-.01Z"/>
              </svg>
            SVG
          }
        ],

        image: {
          src:   "https://tailwindcss.com/plus-assets/img/component-images/dark-project-app-screenshot.png",
          alt:   "Product screenshot",
          class: "w-3xl max-w-none rounded-xl bg-gray-900 shadow-xl ring-1 ring-gray-400/10 sm:w-228"
        }
      }
    end
  end
end
