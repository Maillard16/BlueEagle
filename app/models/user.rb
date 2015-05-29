class User < ActiveRecord::Base
   has_and_belongs_to_many :roles
   has_one :employe
   has_many :notification
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def has_role?(role)      
      return self.roles.find_by(:name => role.to_s.camelize)    
  end
  
   def roles_as_text    
      texte=''    
      self.roles.each do |role|     
         texte=texte + role.name + " "    
      end    
      return texte   
   end 
end
