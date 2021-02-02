require 'test_helper'

class MonitoringzusksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monitoringzusk = monitoringzusks(:one)
  end

  test "should get index" do
    get monitoringzusks_url
    assert_response :success
  end

  test "should get new" do
    get new_monitoringzusk_url
    assert_response :success
  end

  test "should create monitoringzusk" do
    assert_difference('Monitoringzusk.count') do
      post monitoringzusks_url, params: { monitoringzusk: { komponente_id: @monitoringzusk.komponente_id, monitoring_id: @monitoringzusk.monitoring_id, server_id: @monitoringzusk.server_id, werte: @monitoringzusk.werte } }
    end

    assert_redirected_to monitoringzusk_url(Monitoringzusk.last)
  end

  test "should show monitoringzusk" do
    get monitoringzusk_url(@monitoringzusk)
    assert_response :success
  end

  test "should get edit" do
    get edit_monitoringzusk_url(@monitoringzusk)
    assert_response :success
  end

  test "should update monitoringzusk" do
    patch monitoringzusk_url(@monitoringzusk), params: { monitoringzusk: { komponente_id: @monitoringzusk.komponente_id, monitoring_id: @monitoringzusk.monitoring_id, server_id: @monitoringzusk.server_id, werte: @monitoringzusk.werte } }
    assert_redirected_to monitoringzusk_url(@monitoringzusk)
  end

  test "should destroy monitoringzusk" do
    assert_difference('Monitoringzusk.count', -1) do
      delete monitoringzusk_url(@monitoringzusk)
    end

    assert_redirected_to monitoringzusks_url
  end
end
