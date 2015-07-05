class CategoriaController < ApplicationController
  before_action :set_categorium, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @categoria = Categorium.all
    respond_with(@categoria)
  end

  def show
    respond_with(@categorium)
  end

  def new
    @categorium = Categorium.new
    respond_with(@categorium)
  end

  def edit
  end

  def create
    @categorium = Categorium.new(categorium_params)
    @categorium.save
    respond_with(@categorium)
  end

  def update
    @categorium.update(categorium_params)
    respond_with(@categorium)
  end

  def destroy
    @categorium.destroy
    respond_with(@categorium)
  end

  private
    def set_categorium
      @categorium = Categorium.find(params[:id])
    end

    def categorium_params
      params.require(:categorium).permit(:nombre)
    end
end
