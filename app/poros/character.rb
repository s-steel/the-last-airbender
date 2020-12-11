class Character
   attr_reader :name,
               :allies,
               :enemies,
               :affiliation,
               :image
  def initialize(data)
    @name = data[:name]
    @image = data[:photoUrl]
    @allies = data[:allies].join(', ')
    @enemies = data[:enemies].join(', ')
    @affiliation = data[:affiliation]
  end
end
