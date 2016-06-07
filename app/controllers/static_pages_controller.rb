class StaticPagesController < ApplicationController
  def index
    @cta1 = "Get a quote"
    @cta2 = "Become a driver"
  end

  def track_shipment
    @tracking_link = " https://uplinkgps.com"
  end

  def photos
  end

  def documents
  end

  def about_us
  end

  def contact_us
  end
end