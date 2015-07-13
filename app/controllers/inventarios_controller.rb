class InventariosController < ApplicationController
  before_action :set_inventario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @inventarios = Inventario.all
    respond_with(@inventarios)
     #@inventarios = Inventario.paginate(:page => @page)
  end

  def show
    #respond_with(@inventario)
    @inventario = Inventario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inventario }
  end

  def new
    @inventario = Inventario.new
    respond_with(@inventario)
    #@inventario = Inventario.new(:inventario_detalles_attributes => [{}])
  end

  def edit
    @inventario = Inventario.find(params[:id], :include => {:inventario_detalles => {:item => :unidad_medida} })
  end

  def create
    #@inventario = Inventario.new(inventario_params)
    #@inventario.save
    #respond_with(@inventario)
    @inventario = Inventario.new(params[:inventario])
    if @inventario.save
      flash[:notice] = "El inventario fue correctamente creado."
      redirect_to inventarios_path      
    else
      render "new"
    end
  end

  def update
    #inventario.update(inventario_params)
    #espond_with(@inventario)
    @inventario = Inventario.find(params[:id])
    if @inventario.update_attributes(params[:inventario])
      flash[:notice] = "El inventario fue correctamente actualizado."
      redirect_to inventarios_path
    else
      render :action => "edit"
    end
  end

  def destroy
    @inventario.destroy
    respond_with(@inventario)
  end

  private
    def set_inventario
      @inventario = Inventario.find(params[:id])
    end

    def inventario_params
      params.require(:inventario).permit(:almacen_id, :fecha, :descripcion, :tipo, :total)
    end
end
end
