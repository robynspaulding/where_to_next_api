class SearchController < ApplicationController
  def index
    p params
    search = GoogleSearch.new(
      q: params["q"], 
      location: params["location"], 
      serp_api_key: "#{Rails.application.credentials.serpApi_key}"
    )
    hash_results = search.get_hash

    p hash_results

    render json: hash_results
  end
end
