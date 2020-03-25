class ShoppingCart
  attr_reader :name, :capicity, :products

  def initialize(name, capicity)
    @name = name
    @capicity = capicity
    @products = []
  end

  def add_product(product)
    products << product
  end

  def total_number_of_products
    total_products = products.map do |product|
      product += product
    end 
  end
end
