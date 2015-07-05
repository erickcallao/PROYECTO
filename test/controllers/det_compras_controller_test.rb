require 'test_helper'

class DetComprasControllerTest < ActionController::TestCase
  setup do
    @det_compra = det_compras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:det_compras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create det_compra" do
    assert_difference('DetCompra.count') do
      post :create, det_compra: { catidad: @det_compra.catidad, compra_id: @det_compra.compra_id, num_bol_fac: @det_compra.num_bol_fac, precio: @det_compra.precio, producto_id: @det_compra.producto_id }
    end

    assert_redirected_to det_compra_path(assigns(:det_compra))
  end

  test "should show det_compra" do
    get :show, id: @det_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @det_compra
    assert_response :success
  end

  test "should update det_compra" do
    patch :update, id: @det_compra, det_compra: { catidad: @det_compra.catidad, compra_id: @det_compra.compra_id, num_bol_fac: @det_compra.num_bol_fac, precio: @det_compra.precio, producto_id: @det_compra.producto_id }
    assert_redirected_to det_compra_path(assigns(:det_compra))
  end

  test "should destroy det_compra" do
    assert_difference('DetCompra.count', -1) do
      delete :destroy, id: @det_compra
    end

    assert_redirected_to det_compras_path
  end
end
