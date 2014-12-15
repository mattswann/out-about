
require 'uri'


class PagesController < ApplicationController



  def search_json

    info = {
      term: params[:search_box],
      limit: 6
    }
    results = Yelp.client.search('Melbourne', info)
    render :json => results

  end



end
