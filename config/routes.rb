Rails.application.routes.draw do
  root 'compares#index'
  get 'compares' => 'compares#index'
  post 'compares/compare' => 'compares#compare'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
