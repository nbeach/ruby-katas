require 'vending_machine/vending_machine'
require 'vending_machine/domain/coin'

describe 'VendingMachine' do
  before(:each) do
    @coin_manager = double("CoinManager")
    @vending_machine = VendingMachine.new(@coin_manager)
  end

  describe 'when no credit' do
    it "shows an insert coin message on the display" do
      expect(@vending_machine.display_message).to eq "INSERT COIN"
    end
  end

  describe 'when a coin is inserted' do

    describe 'and it is an accepted coin' do

      before(:each) do

        allow(@coin_manager).to receive(:get_coin_for).and_return(Coin.new(1,1,1,))
        allow(@coin_manager).to receive(:add_coin)
      end

      it "tells that the coin was accepted" do
        object = CircularObject.new(1, 1)
        is_valid_coin = @vending_machine.insert_coin(object)

        expect(is_valid_coin).to eq true
      end

      it "displays credit for the coin on the display" do
        @vending_machine.insert_coin(CircularObject.new(1, 1))
        expect(@vending_machine.display_message).to eq "0.01"
      end

    end

  end

end