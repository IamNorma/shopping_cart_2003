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
    products.quantity += products.quantity  
  end

  def products_by_category(category)
    paper_products = products.find_all do |product|
      product.category == :paper
    end
  end
end
