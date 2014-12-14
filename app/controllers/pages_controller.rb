
class PagesController < ApplicationController


  def index

    @search_results = Yelp.client.search('San Francisco', { term: 'food' })
    render :json => @search_results

  end

  def search_results
  end

end
