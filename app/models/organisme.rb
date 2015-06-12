class Organisme < ActiveRecord::Base
  validate do |organisme|
    OrganismeValidator.new(organisme).validate
  end
end


class OrganismeValidator
  def initialize(organisme)
    @organisme = organisme
  end
 
  def validate
    ordinateurs = Ordinateur.all
    organismes = Organisme.all
    nb_dispo = 0
    
    for ordinateur in ordinateurs do
      if (ordinateur.beneficiaire_id == nil)
        nb_dispo += 1
      end
    end
    
    for organisme in organismes do
      if (organisme.nb_ordinateurs_dispo != nil)
        if (organisme.id != @organisme.id)
          nb_dispo -= organisme.nb_ordinateurs_dispo
        else
          nb_dispo -= @organisme.nb_ordinateurs_dispo
        end
      end
    end
    
    if (nb_dispo < 0)
      @organisme.errors[:base] << "Il n'y a pas assez d'ordinateurs en stock"
    elsif (@organisme.nb_ordinateurs_dispo < 0)
      @organisme.errors[:base] << "Ne peut pas etre negatif"
    end
  end
end