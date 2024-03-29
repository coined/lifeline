require 'test_helper'

class TimelinesControllerTest < ActionController::TestCase
  setup do
    @timeline = timelines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timelines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timeline" do
    assert_difference('Timeline.count') do
      post :create, timeline: @timeline.attributes
    end

    assert_redirected_to timeline_path(assigns(:timeline))
  end

  test "should show timeline" do
    get :show, id: @timeline.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timeline.to_param
    assert_response :success
  end

  test "should update timeline" do
    put :update, id: @timeline.to_param, timeline: @timeline.attributes
    assert_redirected_to timeline_path(assigns(:timeline))
  end

  test "should destroy timeline" do
    assert_difference('Timeline.count', -1) do
      delete :destroy, id: @timeline.to_param
    end

    assert_redirected_to timelines_path
  end
end
