require File.dirname(__FILE__) + '/../test_helper'

class PistsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:pists)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_pist
    assert_difference('Pist.count') do
      post :create, :pist => { }
    end

    assert_redirected_to pist_path(assigns(:pist))
  end

  def test_should_show_pist
    get :show, :id => pists(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => pists(:one).id
    assert_response :success
  end

  def test_should_update_pist
    put :update, :id => pists(:one).id, :pist => { }
    assert_redirected_to pist_path(assigns(:pist))
  end

  def test_should_destroy_pist
    assert_difference('Pist.count', -1) do
      delete :destroy, :id => pists(:one).id
    end

    assert_redirected_to pists_path
  end
end
