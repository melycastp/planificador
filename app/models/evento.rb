class Evento < ApplicationRecord
	belongs_to :eventotipo
	validates :fechainicial, presence: true
	validates :fechafinal, presence: true
	validates :descripcion, presence: true
	validates :eventotipo_id, presence: true
	attr_accessor :date_range

	  def all_day_event?
	    self.start == self.start.midnight && self.end == self.end.midnight ? true : false
	  end
end
