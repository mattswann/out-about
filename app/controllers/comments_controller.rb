class CommentsController < ApplicationController


def create

if Venue.find_by(:yelp_id => params[:yelp_id])
  venue = Venue.find_by(:yelp_id => params[:yelp_id])
else
  venue = create_venue(params[:yelp_id])
end
  @comment = Comment.new
  @comment.comment = params[:comment][:comment]
  @comment.venue_id = venue.id
  @comment.user_id = current_user.id
  @comment.save
  # raise params.inspect
  redirect_to venue_path(venue.yelp_id)

end



private

  def create_venue(details)
   venue = Venue.new(:yelp_id => details)
   venue.save
   return venue
  end



end