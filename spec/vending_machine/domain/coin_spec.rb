require 'vending_machine/domain/coin'

describe 'CoinTest' do

  before(:each) do
    @coin = Coin.new(10, 20, 30);
  end

  describe 'when compared to another coin' do

    describe 'which is equal' do
      it "reports they are equal" do
        expect(@coin.eql?(Coin.new(10, 20, 30))).to eq true
      end
    end

    describe 'which has a different diameter' do
      it "reports they are not equal" do
        expect(@coin.eql?(Coin.new(3, 20, 30))).to eq false
      end
    end

    describe 'which has a different weight' do
      it "reports they are not equal" do
        expect(@coin.eql?(Coin.new(10, 4, 30))).to eq false
      end
    end

    describe 'which has a different value' do
      it "reports they are not equal" do
        expect(@coin.eql?(Coin.new(10, 20, 100))).to eq false
      end
    end
  end
end

