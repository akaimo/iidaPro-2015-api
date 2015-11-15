Rails.application.routes.draw do
  namespace :api, { format: 'json' } do
    namespace :v1 do 
      resources :trash
      resources :tip
      resources :district
    end
  end
end
