class ComprasController < ApplicationController
  before_action :set_compra, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @compras = Compra.all
    respond_with(@compras)
  end

  def show
    respond_with(@compra)
  end

  def new
    @compra = Compra.new
    respond_with(@compra)
  end

  def edit
  end

  def create
    @compra = current_user.compras.new(compra_params)
    @compra.save
    respond_with(@compra)
  end

  def update
    @compra.update(compra_params)
    respond_with(@compra)
  end

  def destroy
    @compra.destroy
    respond_with(@compra)
  end

  private
    def set_compra
      @compra = Compra.find(params[:id])
    end

    def compra_params
      params.require(:compra).permit( :proveedor_id, :fecha, :estado)
    end
end
