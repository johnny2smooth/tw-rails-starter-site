# app/presenters/features_page_presenter.rb
class FeaturesPagePresenter < PagePresenter
  # only page-specific overrides, everything else comes from PagePresenter
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
end
