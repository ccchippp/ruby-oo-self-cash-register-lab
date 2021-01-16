require 'pry'

class CashRegister

    attr_reader :items
    # attr_writer
    attr_accessor :total, :discount, :last_transaction

    def initialize(discount = 20)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        @total += quantity.to_f * price.to_f
        @items.push(item * quantity)
        last_transaction = price * quantity
    end
    def apply_discount
        if @total == 0
            p "There is no discount to apply."
        else @total = total - total * discount / 100.00
            p "After the discount, the total comes to $#{@total.to_i}."
        end
    end
    def void_last_transaction
        @total = @total - last_transaction
    end
end
#sale = CashRegister.new(0)