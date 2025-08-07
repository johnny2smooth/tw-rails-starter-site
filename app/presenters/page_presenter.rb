# app/presenters/page_presenter.rb
class PagePresenter
  include Rails.application.routes.url_helpers
  def default_url_options; {} end

  # Common header/footer/nav
  def header_section
    {
      company_name: company_name,
      logo_url:     logo_url,
      root_path:    root_path,
      nav_links:    nav_links,
      login_link:   login_link
    }
  end

  def footer_section
    {
      nav_links:    nav_links,   # re-use your main nav
      legal_links: [
        { title: "Privacy Policy",   url: "#" },
        { title: "Terms of Service", url: "#" }
      ],
      company_name: company_name,
      year:         Time.current.year
    }
  end

  # Basic site identity
  def company_name
    "Your Company"
  end

  def logo_url
    "https://tailwindcss.com/plus-assets/img/logos/mark.svg?color=indigo&shade=600"
  end

  def root_path
    page_path("home")
  end

  def nav_links
    [
      { title: "Product",     url: page_path("product")     },
      { title: "Features",    url: page_path("features")    },
      { title: "Company",     url: page_path("company")     }
    ]
  end

  def login_link
    { title: "Sign In", url: page_path("sign-in") }
  end

  # Default hero/pricing/etc delegate to nil or no-ops
  def hero_banner_section
    {
      # Either nil (no banner) or a hash:
      announcement: {
        text:      "Announcing our next round of funding.",
        link_text: "Read more →",
        link_url:  page_path("home")  # or wherever your announcement lives
      },

      # Main headings
      title:    "A better workflow",
      subtitle: "Aliquet nec orci mattis amet quisque ullamcorper neque, nibh sem. At arcu, sit dui mi, nibh dui, diam eget aliquam. Quisque id at vitae feugiat egestas.",

      # Primary CTA button
      primary: {
        text: "Get started",
        url:  page_path("product"),
        html_options: {
          class: "rounded-md bg-indigo-600 px-3.5 py-2.5 text-sm font-semibold text-white " \
                 "shadow-xs hover:bg-indigo-500 focus-visible:outline-2 " \
                 "focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
        }
      },

      # Secondary link
      secondary: {
        text: "Learn more →",
        url:  page_path("product/features"),
        html_options: {
          class: "text-sm/6 font-semibold text-gray-900"
        }
      }
    }
  end

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

  def testimonial_section
    {
      logo: {
        src:   "https://tailwindcss.com/plus-assets/img/logos/workcation-logo-indigo-600.svg",
        alt:   "Workcation logo",
        class: "mx-auto h-12"
      },
      quote: "“Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo expedita voluptas culpa sapiente alias molestiae. Numquam corrupti in laborum sed rerum et corporis.”",
      person: {
        name: "Judith Black",
        role: "CEO of Workcation",
        image: {
          src:   "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
          alt:   "Judith Black",
          class: "mx-auto size-10 rounded-full"
        }
      }
    }
  end

  def workflow_section
    {
      eyebrow: "Deploy faster",
      title:   "A better workflow",
      intro:   "Aliquet nec orci mattis amet quisque ullamcorper neque, nibh sem. At arcu, sit dui mi, nibh dui, diam eget aliquam. Quisque id at vitae feugiat egestas.",
      image: {
        src:   "https://tailwindcss.com/plus-assets/img/component-images/dark-project-app-screenshot.png",
        alt:   "App screenshot",
        class: "w-3xl max-w-none rounded-xl bg-gray-900 shadow-xl ring-1 ring-gray-400/10 sm:w-228"
      },
      body_intro: "Faucibus commodo massa rhoncus, volutpat. Dignissim sed eget risus enim. Mattis mauris semper sed amet vitae sed turpis id. Id dolor praesent donec est. Odio penatibus risus viverra tellus varius sit neque erat velit. Faucibus commodo massa rhoncus, volutpat. Dignissim sed eget risus enim. Mattis mauris semper sed amet vitae sed turpis id.",
      bullets: [
        {
          title:       "Push to deploy.",
          description: "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.",
          icon_svg: <<~SVG
            <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true"
                 class="mt-1 size-5 flex-none text-indigo-600">
              <path clip-rule="evenodd" fill-rule="evenodd"
                    d="M5.5 17a4.5 4.5 0 0 1-1.44-8.765
                       4.5 4.5 0 0 1 8.302-3.046
                       3.5 3.5 0 0 1 4.504 4.272
                       A4 4 0 0 1 15 17H5.5
                       Zm3.75-2.75a.75.75 0 0 0 1.5 0
                       V9.66l1.95 2.1a.75.75 0 1 0 1.1-1.02
                       l-3.25-3.5a.75.75 0 0 0-1.1 0
                       l-3.25 3.5a.75.75 0 1 0 1.1 1.02
                       l1.95-2.1v4.59Z"/>
            </svg>
          SVG
        },
        {
          title:       "SSL certificates.",
          description: "Anim aute id magna aliqua ad ad non deserunt sunt. Qui irure qui lorem cupidatat commodo.",
          icon_svg: <<~SVG
            <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true"
                 class="mt-1 size-5 flex-none text-indigo-600">
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
          icon_svg: <<~SVG
            <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true"
                 class="mt-1 size-5 flex-none text-indigo-600">
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
      body_middle:   "Et vitae blandit facilisi magna lacus commodo. Vitae sapien duis odio id et. Id blandit molestie auctor fermentum dignissim. Lacus diam tincidunt ac cursus in vel. Mauris varius vulputate et ultrices hac adipiscing egestas. Iaculis convallis ac tempor et ut. Ac lorem vel integer orci.",
      final_heading: "No server? No problem.",
      final_text:    "Id orci tellus laoreet id ac. Dolor, aenean leo, ac etiam consequat in. Convallis arcu ipsum urna nibh. Pharetra, euismod vitae interdum mauris enim, consequat vulputate nibh. Maecenas pellentesque id sed tellus mauris, ultrices mauris. Tincidunt enim cursus ridiculus mi. Pellentesque nam sed nullam sed diam turpis ipsum eu a sed convallis diam."
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
  def cta_section 
    {
      title: 'Boost your productivity. Start using our app today.',
      copy:  'Ac euismod vel sit maecenas id pellentesque eu sed consectetur. ' \
             'Malesuada adipiscing sagittis vel nulla.',
      primary: {
        text: 'Get started',
        url:  '#',
        html_options: {
          class: 'rounded-md bg-white px-3.5 py-2.5 text-sm font-semibold ' \
                 'text-gray-900 shadow-xs hover:bg-gray-100 ' \
                 'focus-visible:outline-2 focus-visible:outline-offset-2 ' \
                 'focus-visible:outline-white'
        }
      },
      secondary: {
        text: 'Learn more',
        url:  '#',
        html_options: {
          class: 'text-sm/6 font-semibold text-white hover:text-gray-100'
        }
      },
      image: {
        src:   'https://tailwindcss.com/plus-assets/img/component-images/dark-project-app-screenshot.png',
        alt:   'App screenshot',
        class: 'absolute top-0 left-0 w-228 max-w-none rounded-md bg-white/5 ' \
               'ring-1 ring-white/10'
      }
    }
  end
end
