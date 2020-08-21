require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items, :last_item
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last_item = nil
  end
  
 def add_item(title, price, quantity = 1)
      @price = price
      @total = @total + price
      @items ||= []
      quantity.times do
        @items << title
      end

      @last_quantity_bought = quantity
      @last_price = price 
    end


    def void_last_transaction
      total_last_transaction = @last_quantity_bought * @last_price
      @total = @total - total_last_transaction

      @last_quantity_bought.times do
        @items.pop
      end
    end
  
  def void_last_transaction
    self.total -= self.last_item
  end
  
end