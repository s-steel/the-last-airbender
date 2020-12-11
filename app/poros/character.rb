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
  # need to change this so allies and enemies are not displayed as arrays on the view
  # could create two method here to change the data type of these attributes
end