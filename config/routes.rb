Rails.application.routes.draw do
  resources :users do
    put 'activate', on: :member
  end
end
