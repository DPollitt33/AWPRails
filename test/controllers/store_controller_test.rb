require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get catalog" do
    get :catalog
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'MyString'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

  test "should get privacy_policy" do
    get :privacy_policy
    assert_response :success
  end

  test "should get terms_of_service" do
    get :terms_of_service
    assert_response :success
  end

  test "markup needed for store.js.coffee is in place" do
    get :index
    assert_select '.store .entry > img', 0
    assert_select '.entry input[type=submit]', 0
  end


end
