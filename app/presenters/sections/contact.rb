module Sections
  class Contact < Section
    def self.for(page, overrides = {})
      new(defaults_for(page).deep_merge(overrides))
    end

    # Matches _contact locals:
    #  • headline, description
    #  • form: { action, method, fields:[…], checkbox:{…}, submit:{…} }
    def self.defaults_for(page)
      dropdown_icon = <<~SVG
        <svg viewBox="0 0 16 16" fill="currentColor" aria-hidden="true" class="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-500 sm:size-4">
          <path d="M4.22 6.22a.75.75 0 0 1 1.06 0L8 8.94l2.72-2.72a.75.75 0 1 1 1.06 1.06l-4.25 4.25a.75.75 0 0 1-1.06 0L4.22 7.28a.75.75 0 0 1 0-1.06Z"/>
        </svg>
      SVG

      input_classes   = "block w-full rounded-md bg-white px-3.5 py-2 text-base text-gray-900 outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6"
      textarea_classes= "block w-full rounded-md bg-white px-3.5 py-2 text-base text-gray-900 outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600"
      phone_input_cls = "block min-w-0 grow py-1.5 pr-3 pl-1 text-base text-gray-900 placeholder:text-gray-400 focus:outline-none sm:text-sm/6"
      select_classes  = "col-start-1 row-start-1 w-full appearance-none rounded-md py-2 pr-7 pl-3.5 text-base text-gray-500 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6"

      {
        headline:    "Contact sales",
        description: "Aute magna irure deserunt veniam aliqua magna enim voluptate.",

        form: {
          action: "#", # wire up to a route if desired
          method: "POST",

          fields: [
            {
              id: "first-name", name: "first_name", type: "text",
              label: "First name", autocomplete: "given-name",
              placeholder: nil, classes: input_classes, rows: nil,
              wrapper_class: nil
            },
            {
              id: "last-name", name: "last_name", type: "text",
              label: "Last name", autocomplete: "family-name",
              placeholder: nil, classes: input_classes, rows: nil,
              wrapper_class: nil
            },
            {
              id: "company", name: "company", type: "text",
              label: "Company", autocomplete: "organization",
              placeholder: nil, classes: input_classes, rows: nil,
              wrapper_class: "sm:col-span-2"
            },
            {
              id: "email", name: "email", type: "email",
              label: "Email", autocomplete: "email",
              placeholder: nil, classes: input_classes, rows: nil,
              wrapper_class: "sm:col-span-2"
            },
            # Phone field with country select
            {
              id: "phone-number", name: "phone_number", type: "phone",
              label: "Phone number", autocomplete: nil,
              placeholder: "123-456-7890", classes: phone_input_cls, rows: nil,
              wrapper_class: "sm:col-span-2",
              select: {
                id: "country", name: "country", autocomplete: "country",
                options: ["US", "CA", "EU"],
                classes: select_classes
              },
              icon_svg: dropdown_icon
            },
            {
              id: "message", name: "message", type: "textarea",
              label: "Message", autocomplete: nil,
              placeholder: nil, classes: textarea_classes, rows: 4,
              wrapper_class: "sm:col-span-2"
            }
          ],

          checkbox: {
            id: "agree-to-policies",
            name: "agree_to_policies",
            label_text: "By selecting this, you agree to our",
            link_text:  "privacy policy",
            link_url:   page.page_path("privacy")
          },

          submit: {
            text:    "Let's talk",
            classes: "block w-full rounded-md bg-indigo-600 px-3.5 py-2.5 text-center text-sm font-semibold text-white shadow-xs hover:bg-indigo-500 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
          }
        }
      }
    end
  end
end
