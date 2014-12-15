
class VenuesController < ApplicationController

  def venue_json

  end

  def show
    business = params[:id]
    @results = Yelp.client.business("#{business}")
  end





end