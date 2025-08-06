class PagesController < ApplicationController
  def index
    @page = HomePagePresenter.new
  end
end
