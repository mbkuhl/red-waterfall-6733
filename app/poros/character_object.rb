class CharacterObject
  attr_reader :id, :name, :allies, :enemies, :affiliation, :photo_url
  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @photo_url = data[:photoUrl]
  end
end