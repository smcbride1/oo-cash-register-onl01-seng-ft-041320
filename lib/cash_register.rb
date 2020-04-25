class CashRegister
  attr_accessor :total, :discount, :totals, :items
  def initialize(employee_discount = 0)
    @items = []
    @total = 0
    @totals = [0]
    @discount = cash_register_with_discount
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    self.totals.push(self.total)
    self.items.push(title)
  end

  def apply_discount
    return puts "There is no discount to apply." if self.discount == 0
    self.total *= (100 - self.discount) / 100
    puts "After the discount, the total comes to $#{self.total}."
  end

  def void_last_transaction
    self.items.pop
    self.totals.pop
    self.total = self.previous_totals.last
  end
end
