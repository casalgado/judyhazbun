Judyhazbun::Application.routes.draw do
  
  devise_for :admins
  resources :contacts
  resources :graphics
  resources :sections do
  	get 'shuffle', on: :member
  end
  resources :pages, :path => '' do
    get 'boutique'       , on: :collection
    get 'coleccionh'     , on: :collection
    get 'judyhazbun'     , on: :collection
    get 'haz'            , on: :collection
    get 'jqmp'           , on: :collection
    get 'judy'           , on: :collection
    get 'novias'         , on: :collection
    get 'home'           , on: :collection
    get 'zanzibar'       , on: :collection
    get 'pueblodemujeres', on: :collection
    get 'blancoynegro'   , on: :collection
    get 'heritage'       , on: :collection
  end

  root to: "pages#home"
end
