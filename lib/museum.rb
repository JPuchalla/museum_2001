require './lib/exhibit'
require './lib/patron'

class Museum
  def initialize(name)
    @name = name
    @exhibits = []

  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def exhibits
    @exhibits
  end

  def recommend_exhibits(patron)
    reccomended_exhibits = []
    @exhibits.each do |exhibit|
      if patron.interests.any? {|interest| exhibit.name == interest}
        reccomended_exhibits << exhibit
      end
    end
    reccomended_exhibits
  end
end
