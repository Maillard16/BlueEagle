class Ability
  include CanCan::Ability

  def initialize(user)
   # Define abilities for the passed in user here. 
   user ||= User.new # guest user (not logged in)
   if user.has_role?(:admin)        
      can :read, :all 
      can :manage, :all
      #can :manage, User do |un_user|          
      #   !un_user.has_role?(:admin) ||         
      #   un_user.id == user.id     
      #end   
      can :voir_roles, User 
   end   
   # See the wiki for details:
   # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
      if user.has_role?(:blueEagle)        
         can :read, Ordinateur
				 can :manage, Ordinateur  
      end
      if user.has_role?(:entreprise)        
         can :read, Ordinateur    
      end
      if user.has_role?(:organisme)        
         can :read, RendezVou
				 can :manage, RendezVou
				 can :read, Beneficiaire   
         can :manage, Beneficiaire             
      end
   end
end
