require 'test_helper'

class ReferenzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @referenz = referenzs(:one)
  end

  test "should get index" do
    get referenzs_url
    assert_response :success
  end

  test "should get new" do
    get new_referenz_url
    assert_response :success
  end

  test "should create referenz" do
    assert_difference('Referenz.count') do
      post referenzs_url, params: { referenz: { applikation_id: @referenz.applikation_id, link: @referenz.link, name: @referenz.name } }
    end

    assert_redirected_to referenz_url(Referenz.last)
  end

  test "should show referenz" do
    get referenz_url(@referenz)
    assert_response :success
  end

  test "should get edit" do
    get edit_referenz_url(@referenz)
    assert_response :success
  end

  test "should update referenz" do
    patch referenz_url(@referenz), params: { referenz: { applikation_id: @referenz.applikation_id, link: @referenz.link, name: @referenz.name } }
    assert_redirected_to referenz_url(@referenz)
  end

  test "should destroy referenz" do
    assert_difference('Referenz.count', -1) do
      delete referenz_url(@referenz)
    end

    assert_redirected_to referenzs_url
  end
end
