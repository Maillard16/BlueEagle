class AddNbOrdinateursDispo < ActiveRecord::Migration
  def change
    add_column :organismes, :nb_ordinateurs_dispo, :integer
  end
end
