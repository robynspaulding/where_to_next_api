class ChangeDatetimeToBeStringInTrips < ActiveRecord::Migration[7.0]
  def change
    change_column :trips, :start_time, :string
    change_column :trips, :end_time, :string
  end
end
