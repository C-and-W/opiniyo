require 'test_helper'

class PetitionSignaturesControllerTest < ActionController::TestCase
  setup do
    @petition_signature = petition_signatures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:petition_signatures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create petition_signature" do
    assert_difference('PetitionSignature.count') do
      post :create, petition_signature: { age: @petition_signature.age, email: @petition_signature.email, name: @petition_signature.name, petition_id: @petition_signature.petition_id }
    end

    assert_redirected_to petition_signature_path(assigns(:petition_signature))
  end

  test "should show petition_signature" do
    get :show, id: @petition_signature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @petition_signature
    assert_response :success
  end

  test "should update petition_signature" do
    patch :update, id: @petition_signature, petition_signature: { age: @petition_signature.age, email: @petition_signature.email, name: @petition_signature.name, petition_id: @petition_signature.petition_id }
    assert_redirected_to petition_signature_path(assigns(:petition_signature))
  end

  test "should destroy petition_signature" do
    assert_difference('PetitionSignature.count', -1) do
      delete :destroy, id: @petition_signature
    end

    assert_redirected_to petition_signatures_path
  end
end
