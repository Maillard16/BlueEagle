class ChangeDate < ActiveRecord::Migration
  def change
    change_column :rendez_vous, :date, :datetime
  end
end
