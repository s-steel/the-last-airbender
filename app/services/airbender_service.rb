class AirbenderService

  def self.nation_members(nation)
    nation_response = conn.get('api/v1/characters') do |req|
      req.params["affiliation"] = nation
    end
    parse_it(nation_response)
  end

  private 

  def self.conn 
    Faraday.new('https://last-airbender-api.herokuapp.com')
  end

  def self.parse_it(data)
    JSON.parse(data.body, symbolize_names: true)
  end
end

# 'api/v1/characters/?affiliation=nation'