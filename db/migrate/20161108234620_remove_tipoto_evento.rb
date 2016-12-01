class RemoveTipotoEvento < ActiveRecord::Migration[5.0]
  def change
  	remove_columns :eventos, :tipo
  end
end
