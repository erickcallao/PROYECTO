class DetComprasController < ApplicationController
  before_action :set_det_compra, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @det_compras = DetCompra.all
    respond_with(@det_compras)
  end

  def show
    respond_with(@det_compra)
  end

  def new
    @det_compra = DetCompra.new
    respond_with(@det_compra)
  end

  def edit
  end

  def create
    @det_compra = DetCompra.new(det_compra_params)
    @det_compra.save
    respond_with(@det_compra)
  end

  def update
    @det_compra.update(det_compra_params)
    respond_with(@det_compra)
  end

  def destroy
    @det_compra.destroy
    respond_with(@det_compra)
  end

  private
    def set_det_compra
      @det_compra = DetCompra.find(params[:id])
    end

    def det_compra_params
      params.require(:det_compra).permit(:producto_id, :compra_id, :precio, :catidad, :num_bol_fac)
    end
end
