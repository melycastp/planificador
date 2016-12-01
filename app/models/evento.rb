class Evento < ApplicationRecord
	belongs_to :eventotipo
	validates :fecha, presence: true
	validates :hora, presence: true
	validates :descripcion, presence: true
	validates :importante, presence: true
	validates :usuario, presence: true
	validates :eventotipo_id, presence: true
end
