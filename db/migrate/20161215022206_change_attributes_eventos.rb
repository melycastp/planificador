class ChangeAttributesEventos < ActiveRecord::Migration[5.0]
   def up
    change_table :eventos do |t|
      t.change :fechainicial, :datetime
      t.change :fechafinal, :datetime
    end
  end

  def down
    change_table :eventos do |t|
      t.change :fechainicial, :string
      t.change :fechafinal, :string
    end
  end
end
