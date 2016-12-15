class Admin::EventosController < ApplicationController
  layout 'admininterface'
  before_action :authenticate_user!
  
  def index
    @evento = Evento.all
  	#@evento = Evento.where(fechainicial: params[:start]..params[:end])
     #render(@evento, format: :json)
  end

  def new
  	@evento = Evento.new
  end

  def show
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
    def set_event
      @evento = Event.find(params[:id])
    end

  	def evento_params
  		params.require(:evento).permit(:date_range,:fechainicial,:fechafinal,:descripcion,:eventotipo_id, :color)
  	end
end