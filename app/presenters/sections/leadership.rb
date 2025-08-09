module Sections
  class Leadership < Section
    # Matches _leadership locals:
    #   title, description, members: [{ name:, role:, image: {src:, alt:, class:} }]
    def self.for(_page, overrides = {})
      new(defaults.deep_merge(overrides))
    end

    def self.defaults
      {
        title:       "Meet our leadership",
        description: "We’re a dynamic group of individuals who are passionate about what we do and dedicated to delivering the best results for our clients.",
        members: [
          {
            name: "Leslie Alexander", role: "Co-Founder / CEO",
            image: {
              src:   "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
              alt:   "Leslie Alexander",
              class: "size-16 rounded-full outline-1 -outline-offset-1 outline-black/5"
            }
          },
          {
            name: "Michael Foster", role: "Co-Founder / CTO",
            image: {
              src:   "https://images.unsplash.com/photo-1519244703995-f4e0f30006d5?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
              alt:   "Michael Foster",
              class: "size-16 rounded-full outline-1 -outline-offset-1 outline-black/5"
            }
          },
          {
            name: "Dries Vincent", role: "Business Relations",
            image: {
              src:   "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
              alt:   "Dries Vincent",
              class: "size-16 rounded-full outline-1 -outline-offset-1 outline-black/5"
            }
          },
          {
            name: "Lindsay Walton", role: "Front-end Developer",
            image: {
              src:   "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
              alt:   "Lindsay Walton",
              class: "size-16 rounded-full outline-1 -outline-offset-1 outline-black/5"
            }
          },
          {
            name: "Courtney Henry", role: "Designer",
            image: {
              src:   "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
              alt:   "Courtney Henry",
              class: "size-16 rounded-full outline-1 -outline-offset-1 outline-black/5"
            }
          },
          {
            name: "Tom Cook", role: "Director of Product",
            image: {
              src:   "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
              alt:   "Tom Cook",
              class: "size-16 rounded-full outline-1 -outline-offset-1 outline-black/5"
            }
          }
        ]
      }
    end
  end
end
