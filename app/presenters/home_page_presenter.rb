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
end
