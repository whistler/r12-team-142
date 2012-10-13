require 'test_helper'

class CanvasControllerTest < ActionController::TestCase
  setup do
    @canva = canvas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:canvas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create canva" do
    assert_difference('Canva.count') do
      post :create, canva: { channels: @canva.channels, cost_structure: @canva.cost_structure, customer_relationships: @canva.customer_relationships, customer_segments: @canva.customer_segments, description: @canva.description, key_activities: @canva.key_activities, key_partnerships: @canva.key_partnerships, key_resources: @canva.key_resources, public: @canva.public, revenue_streams: @canva.revenue_streams, title: @canva.title, user_id: @canva.user_id, value_propositions: @canva.value_propositions }
    end

    assert_redirected_to canva_path(assigns(:canva))
  end

  test "should show canva" do
    get :show, id: @canva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @canva
    assert_response :success
  end

  test "should update canva" do
    put :update, id: @canva, canva: { channels: @canva.channels, cost_structure: @canva.cost_structure, customer_relationships: @canva.customer_relationships, customer_segments: @canva.customer_segments, description: @canva.description, key_activities: @canva.key_activities, key_partnerships: @canva.key_partnerships, key_resources: @canva.key_resources, public: @canva.public, revenue_streams: @canva.revenue_streams, title: @canva.title, user_id: @canva.user_id, value_propositions: @canva.value_propositions }
    assert_redirected_to canva_path(assigns(:canva))
  end

  test "should destroy canva" do
    assert_difference('Canva.count', -1) do
      delete :destroy, id: @canva
    end

    assert_redirected_to canvas_path
  end
end
