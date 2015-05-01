class CreateEntreprises < ActiveRecord::Migration
  def change
    create_table :entreprises do |t|
      t.string :nom
      t.string :telephone
      t.string :adresse

      t.timestamps null: false
    end
  end
end
