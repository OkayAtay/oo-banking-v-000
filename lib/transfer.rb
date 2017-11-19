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
    binding.pry
    if   @sender.valid? == true && @receiver.valid? == true && self.valid? == true
      true
    else
      false
    end
  end

end
