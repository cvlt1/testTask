Rails.application.routes.draw do
  get 'welcome/index'
resources :projects do
	resources :tasks
end
#resources :users
root 'welcome#index'

end
