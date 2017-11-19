require 'pry'
class Transfer

attr_accessor :sender, :receiver, :status, :amount

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
    if self.valid? 
      @receiver.balance += @amount
      @sender.balance -= @amount
      @status = "complete"
    else
      @status = "rejected"
    end

  end

end
