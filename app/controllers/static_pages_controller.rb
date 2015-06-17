class StaticPagesController < ApplicationController
  def home
      @user = current_user
		  @user_id = current_user.id

			
			
		entreprises = Entreprise.all
			for entreprise in entreprises do
				if (entreprise.user_id == @user_id)
					@entreprise = entreprise
				end
			end

			organismes = Organisme.all
			for organisme in organismes do
				if (organisme.user_id == @user_id)
					@organisme = organisme
				end
			end
		
			employes = Employe.all
			for employe in employes do
				if (employe.user_id == @user_id)
					@employe = employe
				end
			end
	end

  def contact
  end
end
