class BankAccount

    def initialize
        @balance = 0.0
        @interest_rate = 0.05
    end 

    def see_balance 
        puts "your balance is #{@balance}"
    end

    def deposit(amount)
        @balance += amount
        see_balance
    end
    def withdraw(amount)
        @balance -= amount
        see_balance
    end
    def gain_intrest
@balance += @balance * @interest_rate
see_balance
    end
end

dovs_account = BankAccount.new
dovs_account.deposit(50)
dovs_account.withdraw(25)
dovs_account.gain_intrest