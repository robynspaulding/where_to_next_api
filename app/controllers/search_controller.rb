class SearchController < ApplicationController
   
  def index
    p params
    search = GoogleSearch.new(
      q: params["q"], 
      location: params["location"], 
      serp_api_key: "c143d7cca3835e1e7ef0ad92d30435da9e98c79fa4096fda69405815bdc18ef9"
    )
    hash_results = search.get_hash

    p hash_results

    render json: hash_results
  end


end
