require 'vending_machine'

describe 'VendingMachine' do
  before(:each) do
    @vending_machine = VendingMachine.new;
  end

  describe 'when no credit' do
    it "shows an insert coin message on the display" do
      expect(@vending_machine.display_message).to eq "INSERT COIN"
    end
  end

  describe 'when a coin is inserted' do
    #
    # describe 'and it is an accepted coin' do
    #
    #   before(:each) do
    #     coinManager.getCoinFor.onCall(0).returns(new Coin(1, 1, 1))
    #   end
    #
    #   it "tells that the coin was accepted" do
    #     object = new CircularObject(new CircularObject(1, 1))
    #     isValidCoin = @vendingMachine.insertCoin(object)
    #
    #     expect(isValidCoin).to.be.true;
    #   end
    #
    #   it "displays credit for the coin on the display" do
    #     @vendingMachine.insertCoin(new CircularObject(1, 1))
    #     expect(@vendingMachine.getDisplayMessage).to contain "0.01"
    #   end
    #
    # end

  end

end