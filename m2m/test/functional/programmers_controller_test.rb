require 'test_helper'

class ProgrammersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programmers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programmer" do
    assert_difference('Programmer.count') do
      post :create, :programmer => { }
    end

    assert_redirected_to programmer_path(assigns(:programmer))
  end

  test "should show programmer" do
    get :show, :id => programmers(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => programmers(:one).id
    assert_response :success
  end

  test "should update programmer" do
    put :update, :id => programmers(:one).id, :programmer => { }
    assert_redirected_to programmer_path(assigns(:programmer))
  end

  test "should destroy programmer" do
    assert_difference('Programmer.count', -1) do
      delete :destroy, :id => programmers(:one).id
    end

    assert_redirected_to programmers_path
  end
end
