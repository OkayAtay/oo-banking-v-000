require 'pry'
class Transfer

attr_accessor :sender, :receiver, :status, :amount


  def initialize(sender, receiver, amount)
    @status="pending"
    @sender=sender
    @receiver=receiver
    @amount=amount
    @counter = 0
  end

  def valid?
    if   @sender.valid? && @receiver.valid? && self.status == "pending"
      true
    else
      false
    end
  end

  def execute_transaction
    if self.valid? == true 
      @receiver.balance += @amount
      @sender.balance -= @amount
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

end
