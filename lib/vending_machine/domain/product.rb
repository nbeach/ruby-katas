class Product

  def initialize(name, price)
    @name = name
    @price = price
  end

  def get_name
    @name
  end

  def get_price
    @price
  end

  def eql?(product)
    @name === product.get_name && @price === product.get_price
  end

end
