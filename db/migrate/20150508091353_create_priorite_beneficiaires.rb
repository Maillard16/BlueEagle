class CreatePrioriteBeneficiaires < ActiveRecord::Migration
  def change
    create_table :priorite_beneficiaires do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
