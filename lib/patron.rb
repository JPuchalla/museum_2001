class Patron
  def initialize(patron_1, spending_money)
    @patron_1 = patron_1
    @spending_money = 20
    @interests = []

  end

  def name
    @patron_1

  end

  def spending_money
    @spending_money
  end

  def interests
    @interests
  end

  def add_interest(interest)
    @interests << interest
  end

end
