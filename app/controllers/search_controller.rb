class SearchController <ApplicationController
  def index 
    nation = params[:nation].gsub!('_','+')
    @nation = nation.gsub!('+',' ').titlecase

    @characters = SearchFacade.nation_members(nation)
    # conn = Faraday.new('https://last-airbender-api.herokuapp.com')

    # nation_response = conn.get("api/v1/characters/?affiliation=nation") do |req|
    #   req.params[:affiliation] = nation
    # end
    # nation_response = conn.get("api/v1/characters/?affiliation=nation") 
    
    # nation_data = JSON.parse(nation_response.body, symbolize_names: true)

  end
end