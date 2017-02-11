class PagesController < ApplicationController
  def show
    page = Page.find(params[:id])
    send_data(page.image, type: 'image/jpeg', disposition: 'inline')
  end
end
