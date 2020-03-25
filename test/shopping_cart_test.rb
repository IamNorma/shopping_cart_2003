require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'

class ShoppingCartTest < Minitest::Test
  def test_it_exists
    cart = ShoppingCart.new("King Soopers", 30)

    assert_instance_of ShoppingCart, cart
  end

  def test_it_has_readable_attributes
    cart = ShoppingCart.new("King Soopers", 30)

    assert_equal "King Soopers", cart.name
    assert_equal 30, cart.capicity
  end

  def test_it_can_add_product
    cart = ShoppingCart.new("King Soopers", 30)

    product1 = Product.new(:paper, 'toilet paper', 3.70, 10)
    product2 = Product.new(:meat, 'chicken', 4.50, 2)
    product3 = Product.new(:paper, 'tissue paper', 1.25, 1)


    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)

    assert_equal [product1, product2, product3], cart.products
  end

  def test_total_number_of_products
    cart = ShoppingCart.new("King Soopers", 30)

    product1 = Product.new(:paper, 'toilet paper', 3.70, 10)
    product2 = Product.new(:meat, 'chicken', 4.50, 2)
    product3 = Product.new(:paper, 'tissue paper', 1.25, 1)


    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)

    assert_equal 13, cart.total_number_of_products
  end
end
