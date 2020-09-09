require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products :one
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create" do
    post '/products', params: {product: {name: 'name_test'}}
    last_product = Product.last
    assert_equal(last_product.name, 'name_test')
  end

  test "should get show" do
    get product_url(@product)
    assert_response :success
  end

  test "should edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update" do
    patch '/products/' + @product.id.to_s, params: {product: {name: 'name_test'}}
    @product.reload
    assert_equal(@product.name, 'name_test')
  end

  test "should destroy" do
    product_count = Product.count
    delete delete_product_url(id: @product.id)
    assert_equal(Product.count, product_count - 1)
  end

end
