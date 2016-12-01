class Admin::EventotiposController < ApplicationController
	layout 'admininterface'
	before_action :authenticate_user!
  def index
  	@tipoeventos = Eventotipo.all
  end

  def new
  	@tipoeventos = Eventotipo.new
  end

  def show
  	@tipoeventos = Eventotipo.find(params[:id])
  end

  def edit
  	@tipoeventos = Eventotipo.find(params[:id])
  end

  def create
  	@tipoeventos = Eventotipo.new eventotipo_params
  	if @tipoeventos.save 
      redirect_to ['admin',@tipoeventos], notice: "Tipo de evento creado"
    else
      render :new
    end
  end

  def update
    @tipoeventos = Eventotipo.find(params[:id])
    if @tipoeventos.update eventotipo_params
      redirect_to ['admin',@tipoeventos], notice: "Actualizado"
    else
      render edit
    end
  end

  def destroy
    @tipoeventos = Eventotipo.find(params[:id])
    @tipoeventos.destroy
    redirect_to admin_eventotipos_path, notice: "Tipo de evento Eliminado"
  end

  private 
  	def eventotipo_params
  		params.require(:eventotipo).permit(:nombre)
  	end
end
