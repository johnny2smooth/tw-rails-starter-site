module Sections
  class SignInForm < Section
    def self.for(page, overrides = {})
      new(defaults_for(page).deep_merge(overrides))
    end

    # Matches _sign_in_form locals:
    #  • logo_url, company_name, page_title, form_action,
    #  • forgot_password_url, submit_text, sign_up_text, sign_up_url
    def self.defaults_for(page)
      {
        logo_url:            page.logo_url,
        company_name:        page.company_name,
        page_title:          "Sign in to your account",
        form_action:         "#", # replace with @view.session_path if you wire it up
        forgot_password_url: page.page_path("forgot-password"),
        submit_text:         "Sign in",
        sign_up_text:        "Start a 14 day free trial",
        sign_up_url:         page.page_path("signup")
      }
    end
  end
end
