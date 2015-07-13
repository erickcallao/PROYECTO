require 'test_helper'

class DetVentaControllerTest < ActionController::TestCase
  setup do
    @det_ventum = det_venta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:det_venta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create det_ventum" do
    assert_difference('DetVentum.count') do
      post :create, det_ventum: { cantidad: @det_ventum.cantidad, precio_vent: @det_ventum.precio_vent, producto_id: @det_ventum.producto_id, venta_id: @det_ventum.venta_id }
    end

    assert_redirected_to det_ventum_path(assigns(:det_ventum))
  end

  test "should show det_ventum" do
    get :show, id: @det_ventum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @det_ventum
    assert_response :success
  end

  test "should update det_ventum" do
    patch :update, id: @det_ventum, det_ventum: { cantidad: @det_ventum.cantidad, precio_vent: @det_ventum.precio_vent, producto_id: @det_ventum.producto_id, venta_id: @det_ventum.venta_id }
    assert_redirected_to det_ventum_path(assigns(:det_ventum))
  end

  test "should destroy det_ventum" do
    assert_difference('DetVentum.count', -1) do
      delete :destroy, id: @det_ventum
    end

    assert_redirected_to det_venta_path
  end
end
