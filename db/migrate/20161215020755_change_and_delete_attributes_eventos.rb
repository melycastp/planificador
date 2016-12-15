class ChangeAndDeleteAttributesEventos < ActiveRecord::Migration[5.0]
  def change
  	remove_columns :eventos, :horainicial
  	remove_columns :eventos, :horafinal
  end
  def up
    change_table :eventos do |t|
      t.change :fechainicial, :datetime
      t.change :fechafinal, :datetime
    end
  end
end
