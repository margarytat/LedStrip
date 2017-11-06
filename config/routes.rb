Rails.application.routes.draw do
  scope module: :neo_pixel do 
		resources :neo_pixels
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
