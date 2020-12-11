class Character
   attr_reader :name,
               :allies,
               :enemies,
               :affiation
  def initialize(data)
    @name = data[:name]
    @image = data[:photoUrl] ? data[:photoUrl] : "No Photo"
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
  end
end