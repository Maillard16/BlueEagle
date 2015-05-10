class AddForeignKeyUserToEmploye < ActiveRecord::Migration
  def change
    add_column :employes, :user_id, :integer
  end
end
