class DetVentaController < ApplicationController
  before_action :set_det_ventum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @det_venta = DetVentum.all
    respond_with(@det_venta)
  end

  def show
    respond_with(@det_ventum)
  end

  def new
    @det_ventum = DetVentum.new
    respond_with(@det_ventum)
  end

  def edit
  end

  def create
    @det_ventum = DetVentum.new(det_ventum_params)
    @det_ventum.save
    respond_with(@det_ventum)
  end

  def update
    @det_ventum.update(det_ventum_params)
    respond_with(@det_ventum)
  end

  def destroy
    @det_ventum.destroy
    respond_with(@det_ventum)
  end

  private
    def set_det_ventum
      @det_ventum = DetVentum.find(params[:id])
    end

    def det_ventum_params
      params.require(:det_ventum).permit(:precio_vent, :cantidad, :producto_id, :venta_id)
    end
end
