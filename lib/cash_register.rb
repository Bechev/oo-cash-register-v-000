
class CashRegister
  attr_accessor :discount, :total

  def initialize(discount = 0)
    @total=0
    @discount = discount
  end

  def add_item(item, item_price, item_quantity = 1)
    @total += item_price*item_quantity*(1-@discount/100)
  end

  def apply_discount
    self.total *=(1-(@discount.to_f/100))
    "After the discount, the total comes to #{self.total.to_i}."
  end
end
