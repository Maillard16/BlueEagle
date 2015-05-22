class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.text :contenu
      t.integer :id_user
      t.string :etat

      t.timestamps null: false
    end
  end
end
