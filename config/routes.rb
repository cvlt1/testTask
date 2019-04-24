Rails.application.routes.draw do
	get 'welcome/index'
		resources :projects do
		resources :tasks
	end

root 'welcome#index'

end
