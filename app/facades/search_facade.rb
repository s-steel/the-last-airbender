class SearchFacade 

  def self.nation_members(nation)
    members = AirbenderService.nation_members(nation)
    members.map do |member|
      Character.new(member)
    end
  end
end

# I need a facade test!!!!