class ChangeOpenCloseTimeToTime < ActiveRecord::Migration
  def change
    change_column :restaurants, :open_time, :time
  end
end
