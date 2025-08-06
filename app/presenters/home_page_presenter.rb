# app/presenters/home_page_presenter.rb
class HomePagePresenter
  # If you need URL helpers, you can pass in view_context
  # def initialize(view_context); @view = view_context; end
  include Rails.application.routes.url_helpers

  # so page_path works
  def default_url_options; {} end

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
      { title: "Product",     url: page_path("product") },
      { title: "Features",    url: page_path("features") },
      { title: "Marketplace", url: page_path("marketplace") },
      { title: "Company",     url: page_path("company") }
    ]
  end

  def login_link
    { title: "Log in", path: "#" }
  end

  def nav_section
    {
      company_name: company_name,
      logo_url:     logo_url,
      root_path:    root_path,
      nav_links:    nav_links,
      login_link:   login_link
    }
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

  def stats_section
    {
      stats: [
        { label: 'Transactions every 24 hours', value: '44 million' },
        { label: 'Assets under holding',           value: '$119 trillion' },
        { label: 'New users annually',             value: '46,000' }
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

  def blog_section
    {
      title:    "From the blog",
      subtitle: "Learn how to grow your business with our expert advice.",
      posts: [
        {
          date:         "Mar 16, 2020",
          datetime:     "2020-03-16",
          category:     "Marketing",
          category_url: "#",
          title:        "Boost your conversion rate",
          title_url:    "#",
          excerpt:      "Illo sint voluptas. Error voluptates culpa eligendi. Hic vel totam vitae illo. Non aliquid explicabo necessitatibus unde. Sed exercitationem placeat consectetur nulla deserunt vel. Iusto corrupti dicta.",
          author_name:  "Michael Foster",
          author_url:   "#",
          author_role:  "Co-Founder / CTO",
          author_image: {
            src:   "https://images.unsplash.com/photo-1519244703995-f4e0f30006d5?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
            alt:   "Michael Foster",
            class: "size-10 rounded-full bg-gray-50"
          }
        },
        {
          date:         "Mar 10, 2020",
          datetime:     "2020-03-10",
          category:     "Sales",
          category_url: "#",
          title:        "How to use search engine optimization to drive sales",
          title_url:    "#",
          excerpt:      "Optio cum necessitatibus dolor voluptatum provident commodi et. Qui aperiam fugiat nemo cumque.",
          author_name:  "Lindsay Walton",
          author_url:   "#",
          author_role:  "Front-end Developer",
          author_image: {
            src:   "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
            alt:   "Lindsay Walton",
            class: "size-10 rounded-full bg-gray-50"
          }
        },
        {
          date:         "Feb 12, 2020",
          datetime:     "2020-02-12",
          category:     "Business",
          category_url: "#",
          title:        "Improve your customer experience",
          title_url:    "#",
          excerpt:      "Cupiditate maiores ullam eveniet adipisci in doloribus nulla minus. Voluptas iusto libero adipisci rem et corporis. Nostrud sint anim sunt aliqua. Nulla eu labore irure incididunt velit cillum quis magna dolore.",
          author_name:  "Tom Cook",
          author_url:   "#",
          author_role:  "Director of Product",
          author_image: {
            src:   "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
            alt:   "Tom Cook",
            class: "size-10 rounded-full bg-gray-50"
          }
        }
      ]
    }
  end

  def contact_section
    {
      headline:    "Contact sales",
      description: "Aute magna irure deserunt veniam aliqua magna enim voluptate.",
      form: {
        action: " #",
        method: "POST",
        fields: [
          {
            id:            "first-name",
            name:          "first-name",
            type:          "text",
            label:         "First name",
            autocomplete:  "given-name",
            classes:       "block w-full rounded-md bg-white px-3.5 py-2 text-base text-gray-900 outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600",
            placeholder:   nil,
            rows:          nil,
            wrapper_class: ""
          },
          {
            id:            "last-name",
            name:          "last-name",
            type:          "text",
            label:         "Last name",
            autocomplete:  "family-name",
            classes:       "block w-full rounded-md bg-white px-3.5 py-2 text-base text-gray-900 outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600",
            placeholder:   nil,
            rows:          nil,
            wrapper_class: ""
          },
          {
            id:            "company",
            name:          "company",
            type:          "text",
            label:         "Company",
            autocomplete:  "organization",
            classes:       "block w-full rounded-md bg-white px-3.5 py-2 text-base text-gray-900 outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600",
            placeholder:   nil,
            rows:          nil,
            wrapper_class: "sm:col-span-2"
          },
          {
            id:            "email",
            name:          "email",
            type:          "email",
            label:         "Email",
            autocomplete:  "email",
            classes:       "block w-full rounded-md bg-white px-3.5 py-2 text-base text-gray-900 outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600",
            placeholder:   nil,
            rows:          nil,
            wrapper_class: "sm:col-span-2"
          },
          {
            id:            "phone-number",
            name:          "phone-number",
            type:          "phone",
            label:         "Phone number",
            autocomplete:  nil,
            classes:       "block min-w-0 grow py-1.5 pr-3 pl-1 text-base text-gray-900 placeholder:text-gray-400 focus:outline-none sm:text-sm/6",
            placeholder:   "123-456-7890",
            rows:          nil,
            wrapper_class: "sm:col-span-2",
            select: {
              id:           "country",
              name:         "country",
              autocomplete: "country",
              options:      ["US", "CA", "EU"],
              classes:      "col-start-1 row-start-1 w-full appearance-none rounded-md py-2 pr-7 pl-3.5 text-base text-gray-500 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6"
            },
            icon_svg: <<~SVG
              <svg viewBox="0 0 16 16" fill="currentColor" aria-hidden="true"
                   class="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-500 sm:size-4">
                <path clip-rule="evenodd" fill-rule="evenodd"
                      d="M4.22 6.22a.75.75 0 0 1 1.06 0L8 8.94l2.72-2.72a.75.75 0 
                         1 1 1.06 1.06l-3.25 3.25a.75.75 0 0 1-1.06 0L4.22 7.28a.75.75 
                         0 0 1 0-1.06Z" />
              </svg>
            SVG
          },
          {
            id:            "message",
            name:          "message",
            type:          "textarea",
            label:         "Message",
            autocomplete:  nil,
            classes:       "block w-full rounded-md bg-white px-3.5 py-2 text-base text-gray-900 outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600",
            placeholder:   nil,
            rows:          4,
            wrapper_class: "sm:col-span-2"
          }
        ],
        checkbox: {
          id:          "agree-to-policies",
          name:        "agree-to-policies",
          label_text:  "By selecting this, you agree to our",
          link_text:   "privacy policy",
          link_url:    "#"
        },
        submit: {
          text:    "Let's talk",
          classes: "block w-full rounded-md bg-indigo-600 px-3.5 py-2.5 text-center text-sm font-semibold text-white shadow-xs hover:bg-indigo-500 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
        }
      }
    }
  end

  def leadership_section
    {
      title:       "Meet our leadership",
      description: "We’re a dynamic group of individuals who are passionate about what we do and dedicated to delivering the best results for our clients.",
      members: [
        {
          name: "Leslie Alexander",
          role: "Co-Founder / CEO",
          image: {
            src:   "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
            alt:   "Leslie Alexander",
            class: "size-16 rounded-full outline-1 -outline-offset-1 outline-black/5"
          }
        },
        {
          name: "Michael Foster",
          role: "Co-Founder / CTO",
          image: {
            src:   "https://images.unsplash.com/photo-1519244703995-f4e0f30006d5?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
            alt:   "Michael Foster",
            class: "size-16 rounded-full outline-1 -outline-offset-1 outline-black/5"
          }
        },
        {
          name: "Dries Vincent",
          role: "Business Relations",
          image: {
            src:   "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
            alt:   "Dries Vincent",
            class: "size-16 rounded-full outline-1 -outline-offset-1 outline-black/5"
          }
        },
        {
          name: "Lindsay Walton",
          role: "Front-end Developer",
          image: {
            src:   "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
            alt:   "Lindsay Walton",
            class: "size-16 rounded-full outline-1 -outline-offset-1 outline-black/5"
          }
        },
        {
          name: "Courtney Henry",
          role: "Designer",
          image: {
            src:   "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
            alt:   "Courtney Henry",
            class: "size-16 rounded-full outline-1 -outline-offset-1 outline-black/5"
          }
        },
        {
          name: "Tom Cook",
          role: "Director of Product",
          image: {
            src:   "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
            alt:   "Tom Cook",
            class: "size-16 rounded-full outline-1 -outline-offset-1 outline-black/5"
          }
        }
      ]
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

  def trusted_by_section
    {
      heading: "Trusted by the world’s most innovative teams",
      logos: [
        {
          src:    "https://tailwindcss.com/plus-assets/img/logos/158x48/transistor-logo-white.svg",
          alt:    "Transistor",
          width:  158,
          height: 48,
          class:  "col-span-2 max-h-12 w-full object-contain lg:col-span-1"
        },
        {
          src:    "https://tailwindcss.com/plus-assets/img/logos/158x48/reform-logo-white.svg",
          alt:    "Reform",
          width:  158,
          height: 48,
          class:  "col-span-2 max-h-12 w-full object-contain lg:col-span-1"
        },
        {
          src:    "https://tailwindcss.com/plus-assets/img/logos/158x48/tuple-logo-white.svg",
          alt:    "Tuple",
          width:  158,
          height: 48,
          class:  "col-span-2 max-h-12 w-full object-contain lg:col-span-1"
        },
        {
          src:    "https://tailwindcss.com/plus-assets/img/logos/158x48/savvycal-logo-white.svg",
          alt:    "SavvyCal",
          width:  158,
          height: 48,
          class:  "col-span-2 max-h-12 w-full object-contain sm:col-start-2 lg:col-span-1"
        },
        {
          src:    "https://tailwindcss.com/plus-assets/img/logos/158x48/statamic-logo-white.svg",
          alt:    "Statamic",
          width:  158,
          height: 48,
          class:  "col-span-2 col-start-2 max-h-12 w-full object-contain sm:col-start-auto lg:col-span-1"
        }
      ]
    }
  end

  def header_section
    {
      company_name: "Your Company",
      logo_url:     "https://tailwindcss.com/plus-assets/img/logos/mark.svg?color=indigo&shade=600",
      root_path:    "#",
      nav_categories: [
        {
          key:  "product",
          name: "Product",
          items: [
            {
              title:       "Analytics",
              url:         "#",
              description: "Get a better understanding of your traffic",
              icon_svg: <<~SVG
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" aria-hidden="true" class="size-6 text-gray-600 group-hover:text-indigo-600">
                  <path d="M10.5 6a7.5 7.5 0 1 0 7.5 7.5h-7.5V6Z" stroke-linecap="round" stroke-linejoin="round"/>
                  <path d="M13.5 10.5H21A7.5 7.5 0 0 0 13.5 3v7.5Z" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
              SVG
            },
            {
              title:       "Engagement",
              url:         "#",
              description: "Speak directly to your customers",
              icon_svg: <<~SVG
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" aria-hidden="true" class="size-6 text-gray-600 group-hover:text-indigo-600">
                  <path d="M15.042 21.672 13.684 16.6m0 0-2.51 2.225.569-9.47 5.227 7.917-3.286-.672ZM12 2.25V4.5m5.834.166-1.591 1.591M20.25 10.5H18M7.757 14.743l-1.59 1.59M6 10.5H3.75m4.007-4.243-1.59-1.59" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
              SVG
            },
            {
              title:       "Security",
              url:         "#",
              description: "Your customers’ data will be safe and secure",
              icon_svg: <<~SVG
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" aria-hidden="true" class="size-6 text-gray-600 group-hover:text-indigo-600">
                  <path d="M7.864 4.243A7.5 7.5 0 0 1 19.5 10.5c0 2.92-.556 5.709-1.568 8.268M5.742 6.364A7.465 7.465 0 0 0 4.5 10.5a7.464 7.464 0 0 1-1.15 3.993m1.989 3.559A11.209 11.209 0 0 0 8.25 10.5a3.75 3.75 0 1 1 7.5 0c0 .527-.021 1.049-.064 1.565M12 10.5a14.94 14.94 0 0 1-3.6 9.75m6.633-4.596a18.666 18.666 0 0 1-2.485 5.33" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
              SVG
            },
            {
              title:       "Integrations",
              url:         "#",
              description: "Connect with third-party tools",
              icon_svg: <<~SVG
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" aria-hidden="true" class="size-6 text-gray-600 group-hover:text-indigo-600">
                  <path d="M13.5 16.875h3.375m0 0h3.375m-3.375 0V13.5m0 3.375v3.375M6 10.5h2.25a2.25 2.25 0 0 0 2.25-2.25V6a2.25 2.25 0 0 0-2.25-2.25H6A2.25 2.25 0 0 0 3.75 6v2.25A2.25 2.25 0 0 0 6 10.5Zm0 9.75h2.25A2.25 2.25 0 0 0 10.5 18v-2.25a2.25 2.25 0 0 0-2.25-2.25H6a2.25 2.25 0 0 0-2.25 2.25V18A2.25 2.25 0 0 0 6 20.25Zm9.75-9.75H18a2.25 2.25 0 0 0 2.25-2.25V6A2.25 2.25 0 0 0 18 3.75h-2.25A2.25 2.25 0 0 0 13.5 6v2.25a2.25 2.25 0 0 0 2.25 2.25Z" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
              SVG
            },
            {
              title:       "Automations",
              url:         "#",
              description: "Build strategic funnels that will convert",
              icon_svg: <<~SVG
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" aria-hidden="true" class="size-6 text-gray-600 group-hover:text-indigo-600">
                  <path d="M16.023 9.348h4.992v-.001M2.985 19.644v-4.992m0 0h4.992m-4.993 0 3.181 3.183a8.25 8.25 0 0 0 13.803-3.7M4.031 9.865a8.25 8.25 0 0 1 13.803-3.7l3.181 3.182m0-4.991v4.99" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
              SVG
            }
          ]
        }
      ],
      demo_link: {
        text:     "Watch demo",
        url:      "#",
        icon_svg: <<~SVG
          <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true" class="size-5 flex-none text-gray-400">
            <path d="M2 10a8 8 0 1 1 16 0 8 8 0 0 1-16 0Zm6.39-2.908a.75.75 0 0 1 .766.027l3.5 2.25a.75.75 0 0 1 0 1.262l-3.5 2.25A.75.75 0 0 1 8 12.25v-4.5a.75.75 0 0 1 .39-.658Z" clip-rule="evenodd" fill-rule="evenodd"/>
          </svg>
        SVG
      },
      sales_link: {
        text:     "Contact sales",
        url:      "#",
        icon_svg: <<~SVG
          <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true" class="size-5 flex-none text-gray-400">
            <path d="M2 3.5A1.5 1.5 0 0 1 3.5 2h1.148a1.5 1.5 0 0 1 1.465 1.175l.716 3.223a1.5 1.5 0 0 1-1.052 1.767l-.933.267c-.41.117-.643.555-.48.95a11.542 11.542 0 0 0 6.254 6.254c.395.163.833-.07.95-.48l.267-.933a1.5 1.5 0 0 1 1.767-1.052l3.223.716A1.5 1.5 0 0 1 18 15.352V16.5a1.5 1.5 0 0 1-1.5 1.5H15c-1.149 0-2.263-.15-3.326-.43A13.022 13.022 0 0 1 2.43 8.326 13.019 13.019 0 0 1 2 5V3.5Z" clip-rule="evenodd" fill-rule="evenodd"/>
          </svg>
        SVG
      },
      nav_links: [
        { title: "Features",    url: "#" },
        { title: "Marketplace", url: "#" },
        { title: "Company",     url: "#" }
      ],
      login_link: { title: "Log in", url: "#" }
    }
  end
  def event_banner_section
    {
      headline:      "GeneriCon 2023",
      details:       "Join us in Denver from June 7 – 9 to see what’s coming next.",
      cta: {
        text: "Register now",
        url:  "#",
        html_options: {
          class: "flex-none rounded-full bg-gray-900 px-3.5 py-1 text-sm font-semibold text-white shadow-xs hover:bg-gray-700 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-gray-900"
        }
      },
      dismiss_label: "Dismiss",
      dismiss_icon_svg: <<~SVG
        <svg viewBox="0 0 20 20" fill="currentColor" aria-hidden="true"
             class="size-5 text-gray-900">
          <path d="M6.28 5.22a.75.75 0 0 0-1.06 1.06L8.94 10l-3.72 3.72a.75.75 0 1 0 1.06 1.06L10 11.06l3.72 3.72a.75.75 0 1 0 1.06 -1.06L11.06 10l3.72-3.72a.75.75 0 0 0-1.06-1.06L10 8.94 6.28 5.22Z" />
        </svg>
      SVG
    }
  end
  def settings_form
    {
      action: "#",
      method: "POST",
      cancel: {
        text: "Cancel",
        url:  "#",
        html_options: { class: "text-sm/6 font-semibold text-gray-900" }
      },
      submit: {
        text: "Save",
        html_options: {
          class: "rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-xs hover:bg-indigo-500 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
        }
      },
      sections: [
        {
          title:       "Profile",
          description: "This information will be displayed publicly so be careful what you share.",
          wrapper_class: "border-b border-gray-900/10 pb-12",
          fields: [
            {
              type:         "text_with_prefix",
              id:           "username",
              name:         "username",
              label:        "Username",
              prefix:       "workcation.com/",
              placeholder:  "janesmith",
              wrapper_class: "sm:col-span-4"
            },
            {
              type:         "textarea",
              id:           "about",
              name:         "about",
              label:        "About",
              rows:         3,
              helper:       "Write a few sentences about yourself.",
              wrapper_class: "col-span-full"
            },
            {
              type:          "file_change",
              id:            "photo",
              label:         "Photo",
              icon_svg:      nil, # optional svg if you want
              button_text:   "Change",
              button_html:   { class: "rounded-md bg-white px-2.5 py-1.5 text-sm font-semibold text-gray-900 shadow-xs ring-1 ring-gray-300 ring-inset hover:bg-gray-50" },
              wrapper_class: "col-span-full"
            },
            {
              type:          "cover_upload",
              id:            "cover-photo",
              name:          "file-upload",
              label:         "Cover photo",
              icon_svg:     <<~SVG,
                <svg viewBox="0 0 24 24" fill="currentColor" aria-hidden="true" class="mx-auto size-12 text-gray-300">
                  <path d="M1.5 6a2.25 2.25 0 ..."/>
                </svg>
              SVG
              helper:       "PNG, JPG, GIF up to 10MB",
              wrapper_class: "col-span-full"
            }
          ]
        },
        {
          title:       "Personal Information",
          description: "Use a permanent address where you can receive mail.",
          wrapper_class: "border-b border-gray-900/10 pb-12",
          fields: [
            { type: "text", id: "first-name", name: "first-name", label: "First name", autocomplete: "given-name", wrapper_class: "sm:col-span-3" },
            { type: "text", id: "last-name",  name: "last-name",  label: "Last name",  autocomplete: "family-name", wrapper_class: "sm:col-span-3" },
            { type: "text", id: "email",      name: "email",      label: "Email address", autocomplete: "email", wrapper_class: "sm:col-span-4" },
            { type: "select", id: "country",  name: "country",    label: "Country", options: ["United States", "Canada", "Mexico"], autocomplete: "country-name", wrapper_class: "sm:col-span-3" },
            { type: "text", id: "street-address", name: "street-address", label: "Street address", autocomplete: "street-address", wrapper_class: "col-span-full" },
            { type: "text", id: "city",       name: "city",        label: "City", autocomplete: "address-level2", wrapper_class: "sm:col-span-2 sm:col-start-1" },
            { type: "text", id: "region",     name: "region",      label: "State / Province", autocomplete: "address-level1", wrapper_class: "sm:col-span-2" },
            { type: "text", id: "postal-code",name: "postal-code", label: "ZIP / Postal code", autocomplete: "postal-code", wrapper_class: "sm:col-span-2" }
          ]
        },
        {
          title:       "Notifications",
          description: "We'll always let you know about important changes, but you pick what else you want to hear about.",
          wrapper_class: "border-b border-gray-900/10 pb-12",
          fields: [
            {
              type:         "checkbox_group",
              legend:       "By email",
              description:  nil,
              wrapper_class: nil,
              items: [
                { id: "comments",   name: "comments",   label: "Comments",   description: "Get notified when someone posts a comment on a posting.", checked: true },
                { id: "candidates", name: "candidates", label: "Candidates", description: "Get notified when a candidate applies for a job." },
                { id: "offers",     name: "offers",     label: "Offers",     description: "Get notified when a candidate accepts or rejects an offer." }
              ]
            },
            {
              type:         "radio_group",
              legend:       "Push notifications",
              description:  "These are delivered via SMS to your mobile phone.",
              wrapper_class: nil,
              items: [
                { id: "push-everything", name: "push-notifications", label: "Everything", checked: true },
                { id: "push-email",      name: "push-notifications", label: "Same as email" },
                { id: "push-nothing",    name: "push-notifications", label: "No push notifications" }
              ]
            }
          ]
        }
      ]
    }
  end

  def nav_section
    {
      company_name: company_name,
      logo_url:     logo_url,
      root_path:    root_path,
      nav_links:    nav_links,
      login_link:   login_link
    }
  end
end

