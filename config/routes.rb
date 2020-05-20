Rails.application.routes.draw do
  get 'test_url', to: 'games#some_action'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
