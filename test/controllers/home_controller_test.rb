require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get almacen" do
    get :almacen
    assert_response :success
  end

  test "should get caja" do
    get :caja
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

  test "should get galeria" do
    get :galeria
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get reportes" do
    get :reportes
    assert_response :success
  end

  test "should get servicios" do
    get :servicios
    assert_response :success
  end

end
