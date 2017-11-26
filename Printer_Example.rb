class Product
  def initialize(name, description, price)
    @name = name
    @description = description
    @price = price
  end

  def name
    return @name
  end

  def name=(text)
    @name = text
  end

  def description
    return @description
  end

  def description=(text)
    @description = text
  end

  def price
    return @price
  end

  def price=(text)
    @price = text
  end
end

product = Product.new("Printer", "It prints pages!", 94)
p product
p product.name
product.name = "Awesome Printer"
p product.name