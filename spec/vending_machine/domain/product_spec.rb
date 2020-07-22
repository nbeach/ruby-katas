require 'vending_machine/domain/product'

describe 'ProductTest' do

  before(:each) do
    @product = Product.new('Candy', 10);
  end

  describe 'when compared to another product' do

    describe 'which is equal' do
      it "reports they are equal" do
        expect(@product.eql?(Product.new(@product.get_name, @product.get_price))).to eq true
      end
    end

    describe 'which has a different name' do
      it "reports they are not equal" do
        expect(@product.eql?(Product.new("otherName", @product.get_price))).to eq false
      end
    end

    describe 'which has a different price' do
      it "reports they are not equal" do
        expect(@product.eql?(Product.new(@product.get_name, 20))).to eq false
      end
    end
  end

end
