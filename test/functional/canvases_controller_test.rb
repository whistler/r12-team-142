require 'test_helper'

class CanvasesControllerTest < ActionController::TestCase
  setup do
    @canvas = canvases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canvases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canvas" do
    assert_difference('Canvas.count') do
      post :create, canvas: { channels: @canvas.channels, cost_structure: @canvas.cost_structure, customer_relationships: @canvas.customer_relationships, customer_segments: @canvas.customer_segments, description: @canvas.description, key_activities: @canvas.key_activities, key_partnerships: @canvas.key_partnerships, key_resources: @canvas.key_resources, public: @canvas.public, revenue_streams: @canvas.revenue_streams, title: @canvas.title, user_id: @canvas.user_id, value_propositions: @canvas.value_propositions }
    end

    assert_redirected_to canvas_path(assigns(:canvas))
  end

  test "should show canvas" do
    get :show, id: @canvas
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @canvas
    assert_response :success
  end

  test "should update canvas" do
    put :update, id: @canvas, canvas: { channels: @canvas.channels, cost_structure: @canvas.cost_structure, customer_relationships: @canvas.customer_relationships, customer_segments: @canvas.customer_segments, description: @canvas.description, key_activities: @canvas.key_activities, key_partnerships: @canvas.key_partnerships, key_resources: @canvas.key_resources, public: @canvas.public, revenue_streams: @canvas.revenue_streams, title: @canvas.title, user_id: @canvas.user_id, value_propositions: @canvas.value_propositions }
    assert_redirected_to canvas_path(assigns(:canvas))
  end

  test "should destroy canvas" do
    assert_difference('Canvas.count', -1) do
      delete :destroy, id: @canvas
    end

    assert_redirected_to canvases_path
  end
end
