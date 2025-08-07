class SignInPagePresenter < PagePresenter
  def sign_in_section
    {
      logo_url:            logo_url,
      company_name:        company_name,
      page_title:          "Sign in to your account",
      form_action:         "#",  # or your sessions_path
      forgot_password_url: "#",  # or forgot_password_path
      submit_text:         "Sign in",
      sign_up_text:        "Start a 14-day free trial",
      sign_up_url:         "#"   # or sign_up_path
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
end
