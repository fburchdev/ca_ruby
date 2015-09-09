class Account
    attr_reader :name
    attr_reader :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end
    private
    
    def pin
        @pin = 1234
    end
    
    private 
    
    def pin_error
        return "Access denied: incorrect PIN."
    end
    
    public
    
    def display_balance(pin_number)
       puts pin_number == pin ? "Balance: #{@balance}." : pin_error
    end
    
    
end