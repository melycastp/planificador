class CreateEventos < ActiveRecord::Migration[5.0]
  def change
    create_table :eventos do |t|
      t.string :tipo
      t.string :fecha
      t.string :hora
      t.string :descripcion
      t.string :importante
      t.string :usuario

      t.timestamps
    end
  end
end
