Judyhazbun::Application.routes.draw do
  
  resources :pages, :path => '' do
		get 'boutique', on: :collection
		get 'haz'     , on: :collection
		get 'jqmp'    , on: :collection
		get 'judy'    , on: :collection
		get 'novias'  , on: :collection
		get 'home'    , on: :collection
		get 'modal'   , on: :collection
  end

  root to: "pages#home"
end
