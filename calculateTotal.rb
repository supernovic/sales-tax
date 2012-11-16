
# Coupa Problem 2
# Sales Tax

# @author Victor Chang

require "item"

ARGV.each do |file|
  # parse the file into a list of items
  itemList = []
  File.open(file).each do |line|
    matchingArray = line.scan(%r{(\d+) (.*) at (\d+.\d{2})}).flatten
    qty = matchingArray[0].to_i
    item = matchingArray[1]
    price = matchingArray[2].to_f
    itemList.push(Item.new(item, price, qty))
  end
  
  orderTotal = 0
  taxTotal = 0
  itemList.each do |item|
    taxTotal += item.applicableTax
    orderTotal += item.totalCost
  end
  
  # print the receipt
end
