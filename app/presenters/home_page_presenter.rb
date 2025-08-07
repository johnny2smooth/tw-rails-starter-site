# app/presenters/home_page_presenter.rb
class HomePagePresenter < PagePresenter
  # Hero banner
  def hero_banner_section
    {
      # Either nil (no banner) or a hash:
      announcement: {
        text:      "Announcing our next round of Dingus in Q4.",
        link_text: "Read more →",
        link_url:  page_path("home")  # or wherever your announcement lives
      },

      # Main headings
      title:    "Announcing Fall 2025.",
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
end

