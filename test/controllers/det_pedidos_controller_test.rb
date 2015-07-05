require 'test_helper'

class DetPedidosControllerTest < ActionController::TestCase
  setup do
    @det_pedido = det_pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:det_pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create det_pedido" do
    assert_difference('DetPedido.count') do
      post :create, det_pedido: { cantidad: @det_pedido.cantidad, fecha: @det_pedido.fecha, pedido_id: @det_pedido.pedido_id, precio: @det_pedido.precio, producto_id: @det_pedido.producto_id }
    end

    assert_redirected_to det_pedido_path(assigns(:det_pedido))
  end

  test "should show det_pedido" do
    get :show, id: @det_pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @det_pedido
    assert_response :success
  end

  test "should update det_pedido" do
    patch :update, id: @det_pedido, det_pedido: { cantidad: @det_pedido.cantidad, fecha: @det_pedido.fecha, pedido_id: @det_pedido.pedido_id, precio: @det_pedido.precio, producto_id: @det_pedido.producto_id }
    assert_redirected_to det_pedido_path(assigns(:det_pedido))
  end

  test "should destroy det_pedido" do
    assert_difference('DetPedido.count', -1) do
      delete :destroy, id: @det_pedido
    end

    assert_redirected_to det_pedidos_path
  end
end
