class CashRegister
    attr_accessor :total
    attr_reader :discount , :lastItem
       

    def initialize (discount=0)
        @total=0
        @discount=discount
        @itemList=[]
        @lastItem=0
    end

    def add_item (title, price,quantity=1)
        quantity.times  do
            @itemList << title
        end 
        @quantity=quantity
        @lastItem = price*quantity
        self.total += price*quantity
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply." 
        else 
            self.total = self.total - (self.total * self.discount/100)
            "After the discount, the total comes to $#{self.total}."
        end 
    end

    def items
        @itemList
    end

    def void_last_transaction
        self.total -= self.lastItem
    end

end