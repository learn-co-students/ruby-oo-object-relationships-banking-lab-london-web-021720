
class BankAccount

    attr_reader :name

    attr_accessor :balance, :status

    def initialize(name, balance = 1000, status = "open")
        @name = name
        @balance = balance
        @status = status
    end

    def deposit(deposit)
        @balance += deposit
    end

    def display_balance
    current_balance = self.balance
    
    return "Your balance is $#{current_balance}."
    
    end

    def valid?
        if status == "open" && balance > 0
            return true
        else 
            false
        end
    end

    def close_account
        @status = "closed"
    end

end

