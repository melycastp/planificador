class Evento < ApplicationRecord
	belongs_to :eventotipo
	validates :fechainicial, presence: true
	validates :fechafinal, presence: true
	validates :horainicial, presence: true
	validates :horafinal, presence: true
	validates :descripcion, presence: true
	validates :importante, presence: true
	validates :usuario, presence: true
	validates :eventotipo_id, presence: true
end
