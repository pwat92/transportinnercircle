class StaticPagesController < ApplicationController
  def index
    @cta1 = I18n.t 'index.cta1'
    @cta2 = I18n.t 'index.cta2'
    @slogan = I18n.t 'index.heading'
  end

  def track_shipment
    @tracking_link = "https://uplinkgps.com/user/sign_in.html"
  end

  def photos
    @number_of_photos = 11
  end

  def documents
  end

  def about_us
  end

  def contact_us
  end
end