
require 'uri'


class PagesController < ApplicationController



  def search_json
    @search = params[:search_box]

    params = {
      term: 'pizza'
    }
# raise inspect.params

    results = Yelp.client.search('Melbourne', params)
    render :json => results

  end









end
