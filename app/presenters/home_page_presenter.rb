# app/presenters/home_page_presenter.rb
class HomePagePresenter
  # If you need URL helpers, you can pass in view_context
  # def initialize(view_context); @view = view_context; end

  def company_name
    "Your Company"
  end

  def logo_url
    "https://tailwindcss.com/plus-assets/img/logos/mark.svg?color=indigo&shade=600"
  end

  def root_path
    "#"  # or @view.root_path if you passed view_context
  end

  def nav_links
    [
      { title: "Product",     path: "#" },
      { title: "Features",    path: "#" },
      { title: "Marketplace", path: "#" },
      { title: "Company",     path: "#" }
    ]
  end

  def login_link
    { title: "Log in", path: "#" }
  end

  # Hero banner
  def hero_title
    "Data to enrich your online business"
  end

  def hero_subtitle
    "Anim aute id magna aliqua ad ad non deserunt sunt. Qui irure qui lorem cupidatat commodo. Elit sunt amet fugiat veniam occaecat."
  end

  def hero_announcement
    {
      text:      "Announcing our next round of funding.",
      link_text: "Read more",
      link_url:  "#"
    }
  end

  def hero_primary
    {
      text:         "Get started",
      url:          "#",
      html_options: {
        class: "rounded-md bg-indigo-600 px-3.5 py-2.5 text-sm font-semibold text-white " \
               "shadow-xs hover:bg-indigo-500 focus-visible:outline-2 focus-visible:outline-offset-2 " \
               "focus-visible:outline-indigo-600"
      }
    }
  end

  def hero_secondary
    {
      text:         "Learn more",
      url:          "#",
      html_options: {
        class: "text-sm/6 font-semibold text-gray-900"
      }
    }
  end

  # Feature section
  def feature_section
    {
      eyebrow:  "Deploy faster",
      headline: "A better workflow",
      copy:     "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.",
      features: [
        {
          title:       "Push to deploy.",
          description: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.",
          icon_svg:    <<~SVG
            <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true"
                 class="absolute top-1 left-1 size-5 text-indigo-600">
              <path clip-rule="evenodd" fill-rule="evenodd"
                d="M5.5 17a4.5 4.5 0 0 1-1.44-8.765
                   4.5 4.5 0 0 1 8.302-3.046
                   3.5 3.5 0 0 1 4.504 4.272
                   A4 4 0 0 1 15 17H5.5
                   Zm3.75-2.75a.75.75 0 0 0 1.5 0V9.66
                   l1.95 2.1a.75.75 0 1 0 1.1-1.02
                   l-3.25-3.5a.75.75 0 0 0-1.1 0
                   l-3.25 3.5a.75.75 0 1 0 1.1 1.02
                   l1.95-2.1v4.59Z"/>
            </svg>
          SVG
        },
        {
          title:       "SSL certificates.",
          description: "Anim aute id magna aliqua ad ad non deserunt sunt. Qui irure qui lorem cupidatat commodo.",
          icon_svg:    <<~SVG
            <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true"
                 class="absolute top-1 left-1 size-5 text-indigo-600">
              <path clip-rule="evenodd" fill-rule="evenodd"
                d="M10 1a4.5 4.5 0 0 0-4.5 4.5V9H5a2 2 0 0 0-2 2
                   v6a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2v-6
                   a2 2 0 0 0-2-2h-.5V5.5A4.5 4.5 0 0 0 10 1
                   Zm3 8V5.5a3 3 0 1 0-6 0V9h6Z"/>
            </svg>
          SVG
        },
        {
          title:       "Database backups.",
          description: "Ac tincidunt sapien vehicula erat auctor pellentesque rhoncus. Et magna sit morbi lobortis.",
          icon_svg:    <<~SVG
            <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true"
                 class="absolute top-1 left-1 size-5 text-indigo-600">
              <path d="M4.632 3.533A2 2 0 0 1 6.577 2
                       h6.846a2 2 0 0 1 1.945 1.533
                       l1.976 8.234A3.489 3.489 0 0 0 16 11.5
                       H4c-.476 0-.93.095-1.344.267l1.976-8.234Z"/>
              <path clip-rule="evenodd" fill-rule="evenodd"
                d="M4 13a2 2 0 1 0 0 4h12
                   a2 2 0 1 0 0-4H4Zm11.24 2
                   a.75.75 0 0 1 .75-.75H16
                   a.75.75 0 0 1 .75.75v.01
                   a.75.75 0 0 1-.75.75h-.01
                   a.75.75 0 0 1-.75-.75V15
                   Zm-2.25-.75a.75.75 0 0 0-.75.75
                   v.01c0 .414.336.75.75.75H13
                   a.75.75 0 0 0 .75-.75V15
                   a.75.75 0 0 0-.75-.75h-.01Z"/>
            </svg>
          SVG
        }
      ],
      image: {
        src:   "https://tailwindcss.com/plus-assets/img/component-images/project-app-screenshot.png",
        alt:   "Product screenshot",
        class: "w-3xl max-w-none rounded-xl shadow-xl ring-1 ring-gray-400/10 sm:w-228 md:-ml-4 lg:-ml-0"
      }
    }
  end

  # Cards grid section
  def cards_section
    {
      eyebrow:  "Deploy faster",
      headline: "Everything you need to deploy your app",
      cards: [
        {
          wrapper_classes: "relative lg:row-span-2",
          bg_extra:        "lg:rounded-l-4xl",
          round_extra:     "lg:rounded-l-[calc(2rem+1px)]",
          inner_extra:     "pb-3 sm:px-10 sm:pt-10 sm:pb-0",
          title_align:     "",
          desc_align:      "",
          title:           "Mobile friendly",
          description:     "Anim aute id magna aliqua ad ad non deserunt sunt. Qui irure qui lorem cupidatat commodo.",
          media_container: "@container relative min-h-120 w-full grow max-lg:mx-auto max-lg:max-w-sm",
          image: {
            src:   "https://tailwindcss.com/plus-assets/img/component-images/bento-03-mobile-friendly.png",
            alt:   "Mobile friendly demo",
            class: "absolute inset-x-10 top-10 bottom-0 overflow-hidden rounded-t-[12cqw] " \
                   "border-x-[3cqw] border-t-[3cqw] border-gray-700 bg-gray-900 shadow-2xl"
          },
          overlay_extra: "lg:rounded-l-4xl"
        },
        {
          wrapper_classes: "relative max-lg:row-start-1",
          bg_extra:        "max-lg:rounded-t-4xl",
          round_extra:     "max-lg:rounded-t-[calc(2rem+1px)]",
          inner_extra:     "sm:px-10 sm:pt-10",
          title_align:     "max-lg:text-center",
          desc_align:      "max-lg:text-center",
          title:           "Performance",
          description:     "Lorem ipsum, dolor sit amet consectetur adipisicing elit maiores impedit.",
          media_container: "flex flex-1 items-center justify-center px-8 max-lg:pt-10 max-lg:pb-12 sm:px-10 lg:pb-2",
          image: {
            src:   "https://tailwindcss.com/plus-assets/img/component-images/bento-03-performance.png",
            alt:   "Performance metrics screenshot",
            class: "w-full max-lg:max-w-xs"
          },
          overlay_extra: "max-lg:rounded-t-4xl"
        },
        {
          wrapper_classes: "relative max-lg:row-start-3 lg:col-start-2 lg:row-start-2",
          bg_extra:        "",
          round_extra:     "",
          inner_extra:     "sm:px-10 sm:pt-10",
          title_align:     "max-lg:text-center",
          desc_align:      "max-lg:text-center",
          title:           "Security",
          description:     "Morbi viverra dui mi arcu sed. Tellus semper adipiscing suspendisse semper morbi.",
          media_container: "@container flex flex-1 items-center max-lg:py-6 lg:pb-2",
          image: {
            src:   "https://tailwindcss.com/plus-assets/img/component-images/bento-03-security.png",
            alt:   "Security overview graphic",
            class: "h-[min(152px,40cqw)] object-cover"
          },
          overlay_extra: ""
        },
        {
          wrapper_classes: "relative lg:row-span-2",
          bg_extra:        "max-lg:rounded-b-4xl lg:rounded-r-4xl",
          round_extra:     "max-lg:rounded-b-[calc(2rem+1px)] lg:rounded-r-[calc(2rem+1px)]",
          inner_extra:     "pb-3 sm:px-10 sm:pt-10 sm:pb-0",
          title_align:     "max-lg:text-center",
          desc_align:      "max-lg:text-center",
          title:           "Powerful APIs",
          description:     "Sit quis amet rutrum tellus ullamcorper ultricies libero dolor eget sem sodales gravida.",
          media_container: "relative min-h-120 w-full grow",
          image: {
            src:   "https://tailwindcss.com/plus-assets/img/component-images/bento-03-apis.png",
            alt:   "Code snippet example",
            class: "absolute top-10 right-0 bottom-0 left-10 overflow-hidden rounded-tl-xl " \
                   "bg-gray-900 shadow-2xl outline outline-white/10"
          },
          overlay_extra: "max-lg:rounded-b-4xl lg:rounded-r-4xl"
        }
      ]
    }
  end

  # Dark CTA section
  def cta_section
    {
      title: "Boost your productivity. Start using our app today.",
      copy:  "Ac euismod vel sit maecenas id pellentesque eu sed consectetur. Malesuada adipiscing sagittis vel nulla.",
      primary: {
        text: "Get started",
        url:  "#",
        html_options: {
          class: "rounded-md bg-white px-3.5 py-2.5 text-sm font-semibold text-gray-900 shadow-xs " \
                 "hover:bg-gray-100 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-white"
        }
      },
      secondary: {
        text: "Learn more",
        url:  "#",
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

  def pricing_section
    {
      eyebrow:  "Pricing",
      headline: "Choose the right plan for you",
      copy:     "Choose an affordable plan that’s packed with the best features for engaging your audience, creating customer loyalty, and driving sales.",
      tiers: [
        {
          id:                    "tier-hobby",
          name:                  "Hobby",
          price:                 "$29",
          interval:              "month",
          container_classes:     "rounded-3xl rounded-t-3xl bg-white/60 p-8 ring-1 ring-gray-900/10 sm:mx-8 sm:rounded-b-none sm:p-10 lg:mx-0 lg:rounded-tr-none lg:rounded-bl-3xl",
          heading_classes:       "text-base/7 font-semibold text-indigo-600",
          price_classes:         "text-5xl font-semibold tracking-tight text-gray-900",
          interval_classes:      "text-base text-gray-500",
          description_classes:   "mt-6 text-base/7 text-gray-600",
          features_list_classes: "mt-8 space-y-3 text-sm/6 text-gray-600 sm:mt-10",
          features: [
            "25 products",
            "Up to 10,000 subscribers",
            "Advanced analytics",
            "24-hour support response time"
          ],
          feature_icon_svg: <<~SVG,
            <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true"
                 class="h-6 w-5 flex-none text-indigo-600">
              <path clip-rule="evenodd" fill-rule="evenodd"
                    d="M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5
                       a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06
                       l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z"/>
            </svg>
          SVG
          primary: {
            text: "Get started today",
            url:  "#",
            html_options: {
              class: "mt-8 block rounded-md px-3.5 py-2.5 text-center text-sm font-semibold text-indigo-600 inset-ring inset-ring-indigo-200 hover:inset-ring-indigo-300 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600 sm:mt-10"
            }
          }
        },
        {
          id:                    "tier-enterprise",
          name:                  "Enterprise",
          price:                 "$99",
          interval:              "month",
          container_classes:     "relative rounded-3xl bg-gray-900 p-8 shadow-2xl ring-1 ring-gray-900/10 sm:p-10",
          heading_classes:       "text-base/7 font-semibold text-indigo-400",
          price_classes:         "text-5xl font-semibold tracking-tight text-white",
          interval_classes:      "text-base text-gray-400",
          description_classes:   "mt-6 text-base/7 text-gray-300",
          features_list_classes: "mt-8 space-y-3 text-sm/6 text-gray-300 sm:mt-10",
          features: [
            "Unlimited products",
            "Unlimited subscribers",
            "Advanced analytics",
            "Dedicated support representative",
            "Marketing automations",
            "Custom integrations"
          ],
          feature_icon_svg: <<~SVG,
            <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true"
                 class="h-6 w-5 flex-none text-indigo-400">
              <path clip-rule="evenodd" fill-rule="evenodd"
                    d="M16.704 4.153a.75.75 0 0 1 .143 1.052l-8 10.5
                       a.75.75 0 0 1-1.127.075l-4.5-4.5a.75.75 0 0 1 1.06-1.06
                       l3.894 3.893 7.48-9.817a.75.75 0 0 1 1.05-.143Z"/>
            </svg>
          SVG
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

  def newsletter_section
    {
      headline:    "Subscribe to our newsletter",
      description: "Nostrud amet eu ullamco nisi aute in ad minim nostrud adipisicing velit quis. Duis tempor incididunt dolore.",
      form: {
        label:           "Email address",
        input_id:        "email-address",
        input_name:      "email",
        placeholder:     "Enter your email",
        input_classes:   "min-w-0 flex-auto rounded-md bg-white/5 px-3.5 py-2 text-base text-white outline-1 -outline-offset-1 outline-white/10 placeholder:text-gray-500 focus:outline-2 focus:-outline-offset-1 focus:outline-indigo-500 sm:text-sm/6",
        button_text:     "Subscribe",
        button_classes:  "flex-none rounded-md bg-indigo-500 px-3.5 py-2.5 text-sm font-semibold text-white shadow-xs hover:bg-indigo-400 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-500"
      },
      stats: [
        {
          title:       "Weekly articles",
          description: "Non laboris consequat cupidatat laborum magna. Eiusmod non irure cupidatat duis commodo amet.",
          icon_svg: <<~SVG
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
                 stroke-width="1.5" aria-hidden="true"
                 class="size-6 text-white">
              <path d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 0 1 2.25-2.25
                       h13.5A2.25 2.25 0 0 1 21 7.5v11.25m-18 0A2.25 2.25 0 0 0 5.25 21
                       h13.5A2.25 2.25 0 0 0 21 18.75m-18 0v-7.5A2.25 2.25 0 0 1 5.25 9
                       h13.5A2.25 2.25 0 0 1 21 11.25v7.5m-9-6h.008v.008H12v-.008ZM12 15
                       h.008v.008H12V15Zm0 2.25h.008v.008H12v-.008ZM9.75 15h.008v.008H9.75
                       V15Zm0 2.25h.008v.008H9.75v-.008ZM7.5 15h.008v.008H7.5V15Zm0 2.25
                       h.008v.008H7.5v-.008Zm6.75-4.5h.008v.008h-.008v-.008Zm0 2.25
                       h.008v.008h-.008V15Zm0 2.25h.008v.008h-.008v-.008Zm2.25-4.5
                       h.008v.008H16.5v-.008Zm0 2.25h.008v.008H16.5V15Z"
                    stroke-linecap="round" stroke-linejoin="round" />
            </svg>
          SVG
        },
        {
          title:       "No spam",
          description: "Officia excepteur ullamco ut sint duis proident non adipisicing. Voluptate incididunt anim.",
          icon_svg: <<~SVG
            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor"
                 stroke-width="1.5" aria-hidden="true"
                 class="size-6 text-white">
              <path d="M10.05 4.575a1.575 1.575 0 1 0-3.15 0v3m3.15-3v-1.5a1.575
                       1.575 0 0 1 3.15 0v1.5m-3.15 0 .075 5.925m3.075.75V4.575m0 0a1.575
                       1.575 0 0 1 3.15 0V15M6.9 7.575a1.575 1.575 0 1 0-3.15 0v8.175a6.75
                       6.75 0 0 0 6.75 6.75h2.018a5.25 5.25 0 0 0 3.712-1.538l1.732-1.732
                       a5.25 5.25 0 0 0 1.538-3.712l.003-2.024a.668.668 0 0 1 .198-.471
                       1.575 1.575 0 1 0-2.228-2.228 3.818 3.818 0 0 0-1.12 2.687M6.9
                       7.575V12m6.27 4.318A4.49 4.49 0 0 1 16.35 15m.002 0h-.002"
                    stroke-linecap="round" stroke-linejoin="round" />
            </svg>
          SVG
        }
      ]
    }
  end
end
