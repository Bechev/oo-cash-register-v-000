
class CashRegister
  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total=0
    @discount = discount
    @items_bought=[]
  end

  def add_item(item, item_price, item_quantity = 1)
    self.total += item_price*item_quantity
    i=0
    do
    @items_bought << item
    while i< item_quantity
  end

  def apply_discount
    if discount !=0
      self.total *=(1-(@discount.to_f/100))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items_bought
  end

end
