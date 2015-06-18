class Ability
  include CanCan::Ability

  def initialize(user)
   # Define abilities for the passed in user here. 
   user ||= User.new # guest user (not logged in)
   if user.has_role? :admin 
		  can :manage, :all
		  can :menu_admin, @user
		  can :manage, User do |un_user|
            !un_user.has_role?(:admin) ||         
            un_user.id==user.id
         end
   end
	 if user.has_role? :blueEagle     
		  can :menu_blueEagle, @ordinateurs
		  can [:read, :create, :update], Ordinateur, RendezVou 
	 end
	 if user.has_role? :entreprise   
		 can :read, Ordinateur    
	 end
	 if user.has_role? :organisme
		 can :menu_organisme, @rendez-vous
		 can [:read, :create, :update], [RendezVou, Beneficiaire]           
	 end
 end
end
