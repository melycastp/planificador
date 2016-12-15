class RemoveAttFromEventos < ActiveRecord::Migration[5.0]
  def change
  	remove_columns :eventos, :usuario
  	remove_columns :eventos, :importante
  end
end
