class PagesController < ApplicationController
  def index
    @page = HomePagePresenter.new
  end
  def show
    # “product” or “features” or nil → “home”
    page_key = (params[:page] || 'home').underscore

    # Build “ProductPagePresenter” etc.
    presenter_class = "#{page_key.camelize}PagePresenter"
    @page = presenter_class.constantize.new

    render template: "pages/#{page_key}"
  rescue NameError
    # no matching presenter or view → 404
    render file: Rails.root.join('public/404.html'),
           status: :not_found,
           layout: false
  end
end
