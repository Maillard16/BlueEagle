class CreateBeneficiaires < ActiveRecord::Migration
  def change
    create_table :beneficiaires do |t|
      t.string :prenom
      t.string :nom
      t.string :telephone
      t.string :adresse
      t.integer :organisme_id
      t.integer :priorite_beneficiaire_id

      t.timestamps null: false
    end
  end
end
