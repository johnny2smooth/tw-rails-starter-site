# app/presenters/sections/bento_card.rb
# frozen_string_literal: true

module Sections
  class BentoCard < Section
    def self.for(page, overrides = {})
      new(defaults_for(page).deep_merge(overrides))
    end

    # Matches _bento locals:
    # • eyebrow, headline
    # • cards: [{ wrapper_classes, bg_extra, round_extra, inner_extra, title_align, desc_align,
    #             title, description, media_container, image: {src,alt,class}, overlay_extra }]
    def self.defaults_for(_page)
      {
        eyebrow:  "Deploy faster",
        headline: "Everything you need to deploy your app",
        cards: [
          # Left tall card
          {
            wrapper_classes: "relative lg:row-span-2",
            bg_extra:        "absolute inset-px rounded-lg bg-white lg:rounded-l-4xl",
            round_extra:     "rounded-[calc(var(--radius-lg)+1px)] lg:rounded-l-[calc(2rem+1px)]",
            inner_extra:     "px-8 pt-8 pb-3 sm:px-10 sm:pt-10 sm:pb-0",
            title_align:     "max-lg:text-center",
            desc_align:      "max-lg:text-center",
            title:           "Mobile friendly",
            description:     "Anim aute id magna aliqua ad ad non deserunt sunt. Qui irure qui lorem cupidatat commodo.",
            media_container: "@container relative min-h-120 w-full grow max-lg:mx-auto max-lg:max-w-sm",
            image: {
              src:   "https://tailwindcss.com/plus-assets/img/component-images/bento-03-mobile-friendly.png",
              alt:   "",
              class: "size-full object-cover object-top"
            },
            overlay_extra:   "pointer-events-none absolute inset-px rounded-lg shadow-sm outline outline-black/5 lg:rounded-l-4xl"
          },

          # Top middle/right card
          {
            wrapper_classes: "relative max-lg:row-start-1",
            bg_extra:        "absolute inset-px rounded-lg bg-white max-lg:rounded-t-4xl",
            round_extra:     "rounded-[calc(var(--radius-lg)+1px)] max-lg:rounded-t-[calc(2rem+1px)]",
            inner_extra:     "px-8 pt-8 sm:px-10 sm:pt-10",
            title_align:     "max-lg:text-center",
            desc_align:      "max-lg:text-center",
            title:           "Performance",
            description:     "Lorem ipsum, dolor sit amet consectetur adipisicing elit maiores impedit.",
            media_container: "flex flex-1 items-center justify-center px-8 max-lg:pt-10 max-lg:pb-12 sm:px-10 lg:pb-2",
            image: {
              src:   "https://tailwindcss.com/plus-assets/img/component-images/bento-03-performance.png",
              alt:   "",
              class: "w-full max-lg:max-w-xs"
            },
            overlay_extra:   "pointer-events-none absolute inset-px rounded-lg shadow-sm outline outline-black/5 max-lg:rounded-t-4xl"
          },

          # Bottom middle/right card
          {
            wrapper_classes: "relative max-lg:row-start-3 lg:col-start-2 lg:row-start-2",
            bg_extra:        "absolute inset-px rounded-lg bg-white",
            round_extra:     "rounded-[calc(var(--radius-lg)+1px)]",
            inner_extra:     "px-8 pt-8 sm:px-10 sm:pt-10",
            title_align:     "max-lg:text-center",
            desc_align:      "max-lg:text-center",
            title:           "Security",
            description:     "Morbi viverra dui mi arcu sed. Tellus semper adipiscing suspendisse semper morbi.",
            media_container: "@container flex flex-1 items-center max-lg:py-6 lg:pb-2",
            image: {
              src:   "https://tailwindcss.com/plus-assets/img/component-images/bento-03-security.png",
              alt:   "",
              class: "h-[min(152px,40cqw)] object-cover"
            },
            overlay_extra:   "pointer-events-none absolute inset-px rounded-lg shadow-sm outline outline-black/5"
          },

          # Right tall card
          {
            wrapper_classes: "relative lg:row-span-2",
            bg_extra:        "absolute inset-px rounded-lg bg-white max-lg:rounded-b-4xl lg:rounded-r-4xl",
            round_extra:     "rounded-[calc(var(--radius-lg)+1px)] max-lg:rounded-b-[calc(2rem+1px)] lg:rounded-r-[calc(2rem+1px)]",
            inner_extra:     "px-8 pt-8 pb-3 sm:px-10 sm:pt-10 sm:pb-0",
            title_align:     "max-lg:text-center",
            desc_align:      "max-lg:text-center",
            title:           "Powerful APIs",
            description:     "Sit quis amet rutrum tellus ullamcorper ultricies libero dolor eget sem sodales gravida.",
            media_container: "relative min-h-120 w-full grow",
            image: {
              src:   "https://tailwindcss.com/plus-assets/img/component-images/bento-03-security.png",
              alt:   "",
              class: "h-[min(152px,40cqw)] object-cover"
            },
            overlay_extra:   "pointer-events-none absolute inset-px rounded-lg shadow-sm outline outline-black/5 max-lg:rounded-b-4xl lg:rounded-r-4xl"
          }
        ]
      }
    end
  end
end
