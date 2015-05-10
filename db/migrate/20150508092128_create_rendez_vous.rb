class CreateRendezVous < ActiveRecord::Migration
  def change
    create_table :rendez_vous do |t|
      t.date :date
      t.integer :beneficiaire_id
      t.integer :employe_id

      t.timestamps null: false
    end
  end
end
