class CreateEmployeGereOrdinateurs < ActiveRecord::Migration
  def change
    create_table :employe_gere_ordinateurs do |t|
      t.date :date
      t.integer :etat_ordinateur_preced_id
      t.integer :etat_ordinateur_acquis_id
      t.integer :employe_id
      t.integer :ordinateur_id

      t.timestamps null: false
    end
  end
end
