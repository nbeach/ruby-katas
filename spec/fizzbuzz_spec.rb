require 'fizzbuzz'

describe 'fizzbuzz' do
  it 'when value is divisible by three returns Fizz' do
    expect(fizzbuzz(3)).to eq "Fizz"
    expect(fizzbuzz(6)).to eq "Fizz"
    expect(fizzbuzz(12)).to eq "Fizz"
  end
  it 'when value is divisible by five returns Buzz' do
    expect(fizzbuzz(5)).to eq "Buzz"
    expect(fizzbuzz(10)).to eq "Buzz"
    expect(fizzbuzz(50)).to eq "Buzz"
  end
  it 'when value is is not divisible by 3 or 5 returns the value' do
    expect(fizzbuzz(4)).to eq 4
    expect(fizzbuzz(16)).to eq 16
    expect(fizzbuzz(52)).to eq 52
  end
end
