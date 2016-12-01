class AddEventotipoToEvento < ActiveRecord::Migration[5.0]
  def change
    add_reference :eventos, :eventotipo, foreign_key: true
  end
end
