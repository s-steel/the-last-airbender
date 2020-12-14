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

# need to add a check in here if there are no allies or enemies