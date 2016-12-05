class Admin::EventosController < ApplicationController
  layout 'admininterface'
  before_action :authenticate_user!
  
  def index
  	@eventos = Evento.all
  end

  def new
  	@evento = Evento.new
  end

  def show
  	@evento = Evento.find(params[:id])
  end

  def edit
  	@evento = Evento.find(params[:id])
  end

  def create
  	@evento = Evento.new evento_params
  	if @evento.save 
      redirect_to ['admin',@evento], notice: "Evento creado"
    else
      render :new
    end
  end

  def update
    @evento = Evento.find(params[:id])
    if @evento.update evento_params
      redirect_to ['admin',@evento], notice: "Actualizado"
    else
      render edit
    end
  end

  def destroy
    @evento = Evento.find(params[:id])
    @evento.destroy
    redirect_to admin_eventos_path, notice: "Evento Eliminado"
  end

  private 
  	def evento_params
  		params.require(:evento).permit(:fechainicial,:fechafinal,:horainicial,:horafinal,:descripcion,:importante,:usuario,:eventotipo_id)
  	end
end