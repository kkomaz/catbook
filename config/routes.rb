Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cats, except: [:new, :edit]
      resources :hobbies, except: [:new, :edit]
      mount_devise_token_auth_for "User", at: 'auth'
    end
  end
end
