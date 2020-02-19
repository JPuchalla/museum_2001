require './lib/exhibit'
require './lib/patron'

class Museum
  def initialize(dmns)
    @dmns = dmns
    @exhibit = []

  end

  def add_exhibit(exhibit)
    @exhibit << exhibit
    require "pry"; binding.pry
  end
end
