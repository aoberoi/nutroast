Nutroast::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]

	resources :roasts do
		resources :stories
	end
  match "roasts/:id" => "roasts#send_text_message", :as => "invite", :via => :post
end
