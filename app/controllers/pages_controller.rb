
require 'uri'


class PagesController < ApplicationController

  def index
    if params[:search_box]

      @results = Yelp.client.search('Melbourne', {term: params[:search_box], limit: 6})
      @yelp_results = @results.businesses

    end
  end


  def show

  end



end
