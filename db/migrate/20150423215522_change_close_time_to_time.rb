class ChangeCloseTimeToTime < ActiveRecord::Migration
  def change
    change_column :restaurants, :close_time, :time
  end
end
