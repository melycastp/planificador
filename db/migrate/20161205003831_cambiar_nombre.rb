class CambiarNombre < ActiveRecord::Migration[5.0]
  def self.up
     rename_column :eventos, :fecha, :fechainicial
     rename_column :eventos, :hora, :horainicial
   end
end
