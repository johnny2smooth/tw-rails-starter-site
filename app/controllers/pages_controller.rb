class PagesController < ApplicationController
  def index
    @nav_links = [
      { title: 'Product',     path: '#' },
      { title: 'Features',    path: '#' },
      { title: 'Marketplace', path: '#' },
      { title: 'Company',     path: '#' }
    ]

    @login_link = { title: 'Log in', path: '#' }

    @announcement = {
      text:      'Announcing our next round of funding.',
      link_text: 'Read more',
      link_url:  '#'
    }

    @primary = {
      text:         'Get started',
      url:          '#',
      html_options: {
        class: 'rounded-md bg-indigo-600 px-3.5 py-2.5 text-sm font-semibold text-white shadow-xs ' \
               'hover:bg-indigo-500 focus-visible:outline-2 focus-visible:outline-offset-2 ' \
               'focus-visible:outline-indigo-600'
      }
    }

    @secondary = {
      text:         'Learn more',
      url:          '#',
      html_options: {
        class: 'text-sm/6 font-semibold text-gray-900'
      }
    }

    @feature_section = {
      eyebrow:  'Deploy faster',
      headline: 'A better workflow',
      copy:     'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.',
      features: [
        {
          title:       'Push to deploy.',
          description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.',
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
          title:       'SSL certificates.',
          description: 'Anim aute id magna aliqua ad ad non deserunt sunt. Qui irure qui lorem cupidatat commodo.',
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
          title:       'Database backups.',
          description: 'Ac tincidunt sapien vehicula erat auctor pellentesque rhoncus. Et magna sit morbi lobortis.',
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
        src:   'https://tailwindcss.com/plus-assets/img/component-images/project-app-screenshot.png',
        alt:   'Product screenshot',
        class: 'w-3xl max-w-none rounded-xl shadow-xl ring-1 ring-gray-400/10 
                sm:w-228 md:-ml-4 lg:-ml-0'
      }
    }
  end
end
