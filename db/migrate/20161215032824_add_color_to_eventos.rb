class AddColorToEventos < ActiveRecord::Migration[5.0]
  def change
  	add_column :eventos, :color, :string
  end
end
