require 'pry'
class Transfer

attr_accessor :sender, :receiver, :status, :amount, :counter


  def initialize(sender, receiver, amount)
    @status="pending"
    @sender=sender
    @receiver=receiver
    @amount=amount
    @counter = 0
  end

  def valid?
    if   @sender.valid? == true && @receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction
    if self.valid? == true && @counter == 0
      @receiver.balance += @amount
      @sender.balance -= @amount
      @counter += 1;
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
    binding.pry
  end

end
