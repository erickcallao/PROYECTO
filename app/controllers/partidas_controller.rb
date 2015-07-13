class PartidasController < ApplicationController
  before_action :set_partida, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @partidas = Partida.all
    respond_with(@partidas)
  end

  def show
    respond_with(@partida)
  end

  def new
    @partida = Partida.new
    respond_with(@partida)
  end

  def edit
  end

  def create
    @partida = Partida.new(partida_params)
    @partida.save
    respond_with(@partida)
  end

  def update
    @partida.update(partida_params)
    respond_with(@partida)
  end

  def destroy
    @partida.destroy
    respond_with(@partida)
  end

  private
    def set_partida
      @partida = Partida.find(params[:id])
    end

    def partida_params
      params.require(:partida).permit(:codigo, :nombre)
    end
end
