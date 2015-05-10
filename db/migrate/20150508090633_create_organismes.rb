class CreateOrganismes < ActiveRecord::Migration
  def change
    create_table :organismes do |t|
      t.string :nom
      t.string :telephone
      t.string :adresse
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
