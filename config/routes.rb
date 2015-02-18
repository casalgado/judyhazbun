Judyhazbun::Application.routes.draw do
  
  resources :pages, :path => '' do
  	get 'boutique', on: :collection
  	get 'home', on: :collection
  end

  root to: "pages#home"
end
