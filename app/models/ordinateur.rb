class Ordinateur < ActiveRecord::Base
  belongs_to :etat_ordinateur
  belongs_to :beneficiaire
end
