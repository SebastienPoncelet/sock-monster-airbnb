require 'test_helper'

class MachinesControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get machines_name_url
    assert_response :success
  end

  test "should get brand" do
    get machines_brand_url
    assert_response :success
  end

  test "should get sock_count" do
    get machines_sock_count_url
    assert_response :success
  end

  test "should get location" do
    get machines_location_url
    assert_response :success
  end

  test "should get description" do
    get machines_description_url
    assert_response :success
  end

  test "should get type" do
    get machines_type_url
    assert_response :success
  end

  test "should get availibility" do
    get machines_availibility_url
    assert_response :success
  end

  test "should get price" do
    get machines_price_url
    assert_response :success
  end

  test "should get photo" do
    get machines_photo_url
    assert_response :success
  end

  test "should get user_id" do
    get machines_user_id_url
    assert_response :success
  end

end
