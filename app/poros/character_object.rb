class CharacterObject
  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @photo_url = data[:photoUrl]
  end
end