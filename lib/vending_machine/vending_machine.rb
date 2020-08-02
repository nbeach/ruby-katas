DISPLAY_MESSAGE = {
    :INSERT_COIN => "INSERT COIN",
    :EXACT_CHANGE_ONLY => "EXACT CHANGE ONLY",
    :SOLD_OUT => "SOLD OUT",
    :THANK_YOU => "THANK YOU"
}

class VendingMachine

  def initialize(coin_manager)
    @coin_manager = coin_manager
    @credit = 0
    @next_display_message = nil
    @coin_return_contents = []
  end

  def display_message
    if @next_display_message != nil
      message = @next_display_message
      @next_display_message = nil
      message
    elsif @credit > 0
      (@credit / 100.0).to_s
    elsif @coin_manager.can_make_change
      return DISPLAY_MESSAGE[:EXACT_CHANGE_ONLY]
    else
      DISPLAY_MESSAGE[:INSERT_COIN]
    end
  end

  def insert_coin(circular_object)
    accepted_coin = @coin_manager.get_coin_for(circular_object)
    if accepted_coin != nil
      @coin_return_contents.push(circular_object)
      false
    end

    @credit += accepted_coin.get_value
    @coin_manager.add_coin(accepted_coin)

    true
  end
end
