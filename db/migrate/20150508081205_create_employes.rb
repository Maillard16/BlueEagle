class CreateEmployes < ActiveRecord::Migration
  def change
    create_table :employes do |t|
      t.string :prenom
      t.string :nom

      t.timestamps null: false
    end
  end
end
