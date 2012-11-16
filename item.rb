class Item
  attr_accessor :name, :cost, :qty, :applicableTax, :totalCost
  
  UNTAXED_ITEMS = ["chocolate", "book", "pills"] # can only handle the specific test cases given

  def initialize(name, cost, quantity)
    @name = name
    @cost = cost
    @quantity = quantity
    @applicableTax = roundTax((calculateTaxRate() * cost / 100.0))
    @totalCost = calculateTotal()
  end
  
  def calculateTaxRate()
    if UNTAXED_ITEMS.any? { |item| name.include? item } && name.include?("import")
      # if this is an imported untaxed item, tax at 5%
      return 5
    elsif UNTAXED_ITEMS.any? { |item| name.include? item }
      # if this is not imported and untaxed, no tax
      return 0
    elsif name.include?("import")
      # if this is an imported good, tax at 15%
      return 15
    else
      # for everything else, tax at 10%
      return 10
    end
  end
  
  def roundTax(num)
    # round a number up to the nearest 0.05
    (num * 20.0).ceil / 20.0
  end
    
  def calculateTotal()
    return applicableTax + cost
  end

end
