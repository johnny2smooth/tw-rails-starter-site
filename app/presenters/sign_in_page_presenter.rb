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
end
