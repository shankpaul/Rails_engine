require 'test_helper'

class AbsentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @absent = absents(:one)
  end

  test "should get index" do
    get absents_url
    assert_response :success
  end

  test "should get new" do
    get new_absent_url
    assert_response :success
  end

  test "should create absent" do
    assert_difference('Absent.count') do
      post absents_url, params: { absent: { employee_id: @absent.employee_id, from: @absent.from, to: @absent.to } }
    end

    assert_redirected_to absent_url(Absent.last)
  end

  test "should show absent" do
    get absent_url(@absent)
    assert_response :success
  end

  test "should get edit" do
    get edit_absent_url(@absent)
    assert_response :success
  end

  test "should update absent" do
    patch absent_url(@absent), params: { absent: { employee_id: @absent.employee_id, from: @absent.from, to: @absent.to } }
    assert_redirected_to absent_url(@absent)
  end

  test "should destroy absent" do
    assert_difference('Absent.count', -1) do
      delete absent_url(@absent)
    end

    assert_redirected_to absents_url
  end
end
