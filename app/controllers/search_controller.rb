class SearchController <ApplicationController
  def index 
    nation = params[:nation].gsub!('_','+')
    @nation = nation.gsub!('+',' ').titlecase

    @characters = SearchFacade.nation_members(nation)
  end
end