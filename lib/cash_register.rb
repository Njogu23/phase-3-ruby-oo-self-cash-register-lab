require "pry"
class CashRegister

    attr_accessor :total, :discount, :last_transaction, :items

   

    def initialize discount = 0
        @total = 0
        @discount = discount
        @last_transaction = 0
        @items = []
    end

    def add_item title, price, quantity = 1
        self.last_transaction= price * quantity
        self.total += self.last_transaction
        quantity.times {self.items << title}
    end

    def apply_discount
        if self.discount > 0
        amout_with_discount = self.total * self.discount/100
        self.total -= amout_with_discount
        "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end

    end


    def void_last_transaction
       self.total -= self.last_transaction
    end

end

c1 = CashRegister.new 20

