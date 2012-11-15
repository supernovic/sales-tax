class Item
  attr_accessor :name, :cost, :qty, :applicableTax

  def initialize(name, cost, quantity)
    @name = name
    @cost = cost
    @quantity = quantity
    @applicableTax = calculateTax(@name, @cost)
  end
  
  def calculateTax(name, cost)
    untaxedItems = ["chocolate", "book", "pills"]
    # if name is a book/food/medical product and doesnt contain import, tax at 0%
    # else if name is a book/food/medical product, tax at 5%
    # else if name contains import, tax at 15%
    # else tax at 10%
  end

end
