class AddFechaHoraFinal < ActiveRecord::Migration[5.0]
  def change
    add_column :eventos, :fechafinal, :string
    add_column :eventos, :horafinal, :string
  end
end
