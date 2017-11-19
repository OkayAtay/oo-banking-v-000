class Transfer

attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @status="pending"
    @sender=sender
    @receiver=receiver
    @amount=amount
  end

  def valid?
    if   @sender.valid? == true && @receiver.valid? == true && self.valid? == true
      true
    end

  end
end
