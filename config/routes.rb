Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v001 do
      resources :doc_tags
      resources :tags
      resources :comments
      resources :documents
      resources :user_workspaces
      resources :workspaces
      resources :users
      post 'upload_file/:id', to: "documents#upload_file"
    end
  end
end
