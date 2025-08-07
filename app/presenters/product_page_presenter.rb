# app/presenters/product_page_presenter.rb
class ProductPagePresenter < PagePresenter
  def bento_card_section
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
end
