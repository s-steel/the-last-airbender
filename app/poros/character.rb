class Character
   attr_reader :name,
               :allies,
               :enemies,
               :affiliation,
               :image
  def initialize(data)
    @name = data[:name]
    @image = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
  end
end