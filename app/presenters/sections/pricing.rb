# app/presenters/sections/pricing.rb
module Sections
  class Pricing < Section
    def self.for(page, overrides = {})
      new(defaults_for(page).deep_merge(overrides))
    end

    # Matches _pricing locals with full class controls per tier
    def self.defaults_for(page)
      check_light = <<~SVG
        <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true" class="h-6 w-5 flex-none text-indigo-600">
          <path d="M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z" />
        </svg>
      SVG

      check_dark = <<~SVG
        <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true" class="h-6 w-5 flex-none text-indigo-400">
          <path d="M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z" />
        </svg>
      SVG

      {
        eyebrow:  "Pricing",
        headline: "Choose the right plan for you",
        copy:     "Choose an affordable plan that’s packed with the best features for engaging your audience, creating customer loyalty, and driving sales.",

        tiers: [
          {
            id: "tier-hobby",
            name: "Hobby",
            price: "$29",
            interval: "/month",
            container_classes: "rounded-3xl rounded-t-3xl bg-white/60 p-8 ring-1 ring-gray-900/10 sm:mx-8 sm:rounded-b-none sm:p-10 lg:mx-0 lg:rounded-tr-none lg:rounded-bl-3xl",
            heading_classes:   "text-base/7 font-semibold text-indigo-600",
            price_classes:     "text-5xl font-semibold tracking-tight text-gray-900",
            interval_classes:  "text-base text-gray-500",
            description_classes: "mt-6 text-base/7 text-gray-600",
            features_list_classes: "mt-8 space-y-3 text-sm/6 text-gray-600 sm:mt-10",
            features: [
              "25 products",
              "Up to 10,000 subscribers",
              "Advanced analytics",
              "24-hour support response time"
            ],
            feature_icon_svg: check_light,
            primary: {
              text: "Get started today",
              url:  "#", # or page.page_path("signup")
              html_options: {
                class: "mt-8 block rounded-md px-3.5 py-2.5 text-center text-sm font-semibold text-indigo-600 inset-ring inset-ring-indigo-200 hover:inset-ring-indigo-300 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600 sm:mt-10"
              }
            }
          },

          {
            id: "tier-enterprise",
            name: "Enterprise",
            price: "$99",
            interval: "/month",
            container_classes: "relative rounded-3xl bg-gray-900 p-8 shadow-2xl ring-1 ring-gray-900/10 sm:p-10",
            heading_classes:   "text-base/7 font-semibold text-indigo-400",
            price_classes:     "text-5xl font-semibold tracking-tight text-white",
            interval_classes:  "text-base text-gray-400",
            description_classes: "mt-6 text-base/7 text-gray-300",
            features_list_classes: "mt-8 space-y-3 text-sm/6 text-gray-300 sm:mt-10",
            features: [
              "Unlimited products",
              "Unlimited subscribers",
              "Advanced analytics",
              "Dedicated support representative",
              "Marketing automations",
              "Custom integrations"
            ],
            feature_icon_svg: check_dark,
            primary: {
              text: "Get started today",
              url:  "#",
              html_options: {
                class: "mt-8 block rounded-md bg-indigo-500 px-3.5 py-2.5 text-center text-sm font-semibold text-white shadow-xs hover:bg-indigo-400 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-500 sm:mt-10"
              }
            }
          }
        ]
      }
    end
  end
end
