class Eventotipo < ApplicationRecord
	has_many :eventos
	validates :nombre, presence: true
end
