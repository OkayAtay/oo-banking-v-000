require 'pry'
class Transfer

attr_accessor :sender, :receiver, :status, :amount, :counter
@counter = 0

  def initialize(sender, receiver, amount)
    @status="pending"
    @sender=sender
    @receiver=receiver
    @amount=amount
  end

  def valid?
    if   @sender.valid? == true && @receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction
    binding.pry
    if self.valid? == true && @counter == 0
      @receiver.balance += @amount
      @sender.balance -= @amount
      self.status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
    @counter += 1
  end

end
