Rails.application.routes.draw do
  
  root 'static_pages#home'
  
  get 'static_pages/home'

  get 'static_pages/contact'

  resources :notifications

  resources :roles

  resources :employe_gere_ordinateurs

  resources :etat_ordinateurs

  resources :rendez_vous

  resources :beneficiaires

  resources :priorite_beneficiaires

  resources :ordinateurs

  resources :organismes

  resources :entreprises

  resources :employes

  devise_for :users
 
  
  resources :users do    
      member do     
         put :save_roles     
         get :edit_roles    
      end   
  end 
  
  get 'gerer_beneficiaires' => 'beneficiaires#gerer'
  
  get 'donner_ordinateurs' => 'organismes#donner_ordinateurs'
  
  get 'index_ordinateurs_entreprise' => 'ordinateurs#index_for_entreprise'
  
  get 'organiser_rdv' => 'organismes#organiser_rdv'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
