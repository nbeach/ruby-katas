require 'vending_machine/domain/circular_object'

describe 'CircularObjectTest' do

  before(:each) do
    @object = CircularObject.new(10, 20);
  end

  describe 'when compared to another object' do

    describe 'which is equal' do

      it "reports they are equal" do
        expect(@object.eql?(CircularObject.new(10, 20))).to eq true
      end

    end

    describe 'which has a different diameter' do

      it "reports they are not equal" do
        expect(@object.eql?(CircularObject.new(3, 20))).to eq false
      end

    end

    describe 'which has a different weight' do

      it "reports they are not equal" do
        expect(@object.eql?(CircularObject.new(10, 4))).to eq false
      end

    end

  end

end

