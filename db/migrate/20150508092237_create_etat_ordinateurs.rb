class CreateEtatOrdinateurs < ActiveRecord::Migration
  def change
    create_table :etat_ordinateurs do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
