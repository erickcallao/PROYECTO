require 'test_helper'

class InventarioDetallesControllerTest < ActionController::TestCase
  setup do
    @inventario_detalle = inventario_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventario_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventario_detalle" do
    assert_difference('InventarioDetalle.count') do
      post :create, inventario_detalle: { activo: @inventario_detalle.activo, cantidad: @inventario_detalle.cantidad, fecha_vencimiento: @inventario_detalle.fecha_vencimiento, inventario_id: @inventario_detalle.inventario_id, item_id: @inventario_detalle.item_id, precio_unitario: @inventario_detalle.precio_unitario }
    end

    assert_redirected_to inventario_detalle_path(assigns(:inventario_detalle))
  end

  test "should show inventario_detalle" do
    get :show, id: @inventario_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventario_detalle
    assert_response :success
  end

  test "should update inventario_detalle" do
    patch :update, id: @inventario_detalle, inventario_detalle: { activo: @inventario_detalle.activo, cantidad: @inventario_detalle.cantidad, fecha_vencimiento: @inventario_detalle.fecha_vencimiento, inventario_id: @inventario_detalle.inventario_id, item_id: @inventario_detalle.item_id, precio_unitario: @inventario_detalle.precio_unitario }
    assert_redirected_to inventario_detalle_path(assigns(:inventario_detalle))
  end

  test "should destroy inventario_detalle" do
    assert_difference('InventarioDetalle.count', -1) do
      delete :destroy, id: @inventario_detalle
    end

    assert_redirected_to inventario_detalles_path
  end
end
