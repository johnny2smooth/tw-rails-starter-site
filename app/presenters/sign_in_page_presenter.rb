class SignInPagePresenter < PagePresenter
  def sign_in_section(overrides = {})
    return Sections::SignInForm.for(self, overrides).to_h if overrides.any?
    @sign_in_section ||= Sections::SignInForm.for(self).to_h
  end

  def contact_section(overrides = {})
    return Sections::Contact.for(self, overrides).to_h if overrides.any?
    @contact_section ||= Sections::Contact.for(self).to_h
  end
end
