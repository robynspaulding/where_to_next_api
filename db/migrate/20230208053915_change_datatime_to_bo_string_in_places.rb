class ChangeDatatimeToBoStringInPlaces < ActiveRecord::Migration[7.0]
  def change
    change_column :places, :start_time, :string
    change_column :places, :end_time, :string
  end
end
