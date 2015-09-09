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
    
    public 
    
    def withdraw(pin_number, amount)
        if pin_number == pin
            @balance -= amount
            puts "Withdrew #{amount}. New balance: $#{@balance}."
        else
            puts pin_error
        end
    end
    
    public
    
    def add(pin_number, amount)
        if pin_number == pin
            @balance += amount
            puts "Added #{amount}. New balance: $#{@balance}."
        else
            puts pin_error
        end
    end
    
    
end

checking_account = Account.new("Frances", 1_000_000_000)