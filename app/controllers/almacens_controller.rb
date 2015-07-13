class AlmacensController < ApplicationController
  before_action :set_almacen, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @almacens = Almacen.all
    respond_with(@almacens)
  end

  def show
    respond_with(@almacen)
  end

  def new
    @almacen = Almacen.new
    respond_with(@almacen)
  end

  def edit
  end

  def create
    @almacen = Almacen.new(almacen_params)
    @almacen.save
    respond_with(@almacen)
  end

  def update
    @almacen.update(almacen_params)
    respond_with(@almacen)
  end

  def destroy
    @almacen.destroy
    respond_with(@almacen)
  end

  private
    def set_almacen
      @almacen = Almacen.find(params[:id])
    end

    def almacen_params
      params.require(:almacen).permit(:nombre, :direccion, :codigo, :telefono)
    end
end
