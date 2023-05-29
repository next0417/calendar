Rails.application.routes.draw do
  root to: 'public/calendars#index'

  scope module: :public do
    resources :calendars, only: [:create, :show, :edit, :update, :destroy]
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
