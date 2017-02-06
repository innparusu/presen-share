class SlidesController < ApplicationController
  def new
    @slide = Slide.new
  end

  def create
    pages = Magick::Image.from_blob(params[:slide][:pdf].read).map do |page|
      page.format = "JPEG"
      page
    end
    @slide = Slide.new(title: params[:slide][:title])
    pages.each_with_index do|page, i|
      @slide.pages << Page.new(page_number: i+1, image: page.to_blob)
    end
    return redirect_to @slide if @slide.save
    render new
  end
end
