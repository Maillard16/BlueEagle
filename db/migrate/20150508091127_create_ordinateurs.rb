class CreateOrdinateurs < ActiveRecord::Migration
  def change
    create_table :ordinateurs do |t|
      t.integer :numero
      t.text :description
      t.integer :entreprise_id
      t.integer :beneficiaire_id
      t.integer :etat_ordinateur_id

      t.timestamps null: false
    end
  end
end
