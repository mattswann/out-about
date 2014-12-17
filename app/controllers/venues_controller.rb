
class VenuesController < ApplicationController


  def show
    business = params[:id]

    @comments = []

  if Venue.find_by(:yelp_id => params[:id])
      venue = Venue.find_by(:yelp_id => params[:id])
    @comments = venue.comments
  end
    @results = Yelp.client.business("#{business}")
    @comment = Comment.new


  end





end