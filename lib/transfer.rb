require 'pry'

class Transfer
  
  @@all = []

  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @status = "pending"
      @amount = amount
      @@all << self
  end

  def self.all
    @@all
  end

  def valid?
    @sender.valid? && @receiver.valid?

  end


  def execute_transaction
   if self.status != "complete"  
    if valid? && @sender.balance > @amount
       @sender.balance -= @amount
       @receiver.balance += @amount
       @status = "complete"
    else
      
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    
    end 
  
  end
end 


  def reverse_transfer
    if self.status == "complete"  
      if valid? && @sender.balance > @amount
         @sender.balance += @amount
         @receiver.balance -= @amount
         @status = "reversed"
       end
      
      end
    end
end
 