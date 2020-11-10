require 'test_helper'

class SaleDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale_detail = sale_details(:one)
  end

  test "should get index" do
    get sale_details_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_detail_url
    assert_response :success
  end

  test "should create sale_detail" do
    assert_difference('SaleDetail.count') do
      post sale_details_url, params: { sale_detail: { count: @sale_detail.count, footwear_id: @sale_detail.footwear_id, real_price: @sale_detail.real_price, sale_id: @sale_detail.sale_id } }
    end

    assert_redirected_to sale_detail_url(SaleDetail.last)
  end

  test "should show sale_detail" do
    get sale_detail_url(@sale_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_detail_url(@sale_detail)
    assert_response :success
  end

  test "should update sale_detail" do
    patch sale_detail_url(@sale_detail), params: { sale_detail: { count: @sale_detail.count, footwear_id: @sale_detail.footwear_id, real_price: @sale_detail.real_price, sale_id: @sale_detail.sale_id } }
    assert_redirected_to sale_detail_url(@sale_detail)
  end

  test "should destroy sale_detail" do
    assert_difference('SaleDetail.count', -1) do
      delete sale_detail_url(@sale_detail)
    end

    assert_redirected_to sale_details_url
  end
end
