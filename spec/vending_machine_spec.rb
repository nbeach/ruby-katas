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

end
