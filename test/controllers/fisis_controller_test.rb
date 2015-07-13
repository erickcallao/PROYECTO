require 'test_helper'

class FisisControllerTest < ActionController::TestCase
  setup do
    @fisi = fisis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fisis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fisi" do
    assert_difference('Fisi.count') do
      post :create, fisi: { descripcion: @fisi.descripcion, nombre: @fisi.nombre }
    end

    assert_redirected_to fisi_path(assigns(:fisi))
  end

  test "should show fisi" do
    get :show, id: @fisi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fisi
    assert_response :success
  end

  test "should update fisi" do
    patch :update, id: @fisi, fisi: { descripcion: @fisi.descripcion, nombre: @fisi.nombre }
    assert_redirected_to fisi_path(assigns(:fisi))
  end

  test "should destroy fisi" do
    assert_difference('Fisi.count', -1) do
      delete :destroy, id: @fisi
    end

    assert_redirected_to fisis_path
  end
end
