class FisisController < ApplicationController
  before_action :set_fisi, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @fisis = Fisi.all
    respond_with(@fisis)
  end

  def show
    respond_with(@fisi)
  end

  def new
    @fisi = Fisi.new
    respond_with(@fisi)
  end

  def edit
  end

  def create
    @fisi = Fisi.new(fisi_params)
    @fisi.save
    respond_with(@fisi)
  end

  def update
    @fisi.update(fisi_params)
    respond_with(@fisi)
  end

  def destroy
    @fisi.destroy
    respond_with(@fisi)
  end

  private
    def set_fisi
      @fisi = Fisi.find(params[:id])
    end

    def fisi_params
      params.require(:fisi).permit(:nombre, :descripcion)
    end
end
