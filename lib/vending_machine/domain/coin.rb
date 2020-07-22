require 'vending_machine/domain/circular_object'

class Coin < CircularObject

  def initialize(diameter, weight, value)
    super(diameter, weight)
    @value = value
  end

  def get_value
    @value
  end

  def eql?(coin)
    super(coin) and @value == coin.get_value
  end

end

