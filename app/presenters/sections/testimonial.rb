module Sections
  class Testimonial < Section
    # Matches _testimonial locals:
    #   logo: {src:, alt:, class:}, quote:, person: {name:, role:, image:{src:, alt:, class:}}
    def self.for(_page, overrides = {})
      new(defaults.deep_merge(overrides))
    end

    def self.defaults
      {
        logo: {
          src:   "https://tailwindcss.com/plus-assets/img/logos/workcation-logo-indigo-600.svg",
          alt:   "Workcation",
          class: "mx-auto h-12"
        },
        quote: "“Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo expedita voluptas culpa sapiente alias molestiae. Numquam corrupti in laborum sed rerum et corporis.”",
        person: {
          name: "Judith Black",
          role: "CEO of Workcation",
          image: {
            src:   "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
            alt:   "Judith Black",
            class: "mx-auto size-10 rounded-full"
          }
        }
      }
    end
  end
end
