class DetPedidosController < ApplicationController
  before_action :set_det_pedido, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @det_pedidos = DetPedido.all
    respond_with(@det_pedidos)
  end

  def show
    respond_with(@det_pedido)
  end

  def new
    @det_pedido = DetPedido.new
    respond_with(@det_pedido)
  end

  def edit
  end

  def create
    @det_pedido = DetPedido.new(det_pedido_params)
    @det_pedido.save
    respond_with(@det_pedido)
  end

  def update
    @det_pedido.update(det_pedido_params)
    respond_with(@det_pedido)
  end

  def destroy
    @det_pedido.destroy
    respond_with(@det_pedido)
  end

  private
    def set_det_pedido
      @det_pedido = DetPedido.find(params[:id])
    end

    def det_pedido_params
      params.require(:det_pedido).permit(:pedido_id, :producto_id, :fecha, :cantidad, :precio)
    end
end
