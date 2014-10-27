Rails.application.routes.draw do

  root 'dashboard/home_controller#index'

  namespace :cms do
    resources :home_banners
  end

  namespace :dashboard do

  end

  namespace :admin do
    resources :stages
    resources :schedules
    resources :partners
    resources :shows
  end

  namespace :website do
    resources :stages
    resources :shows
    resources :partners
    resources :venues
  end

  namespace :api do
    namespace :cms do
      namespace :home do
        get 'banner/index', path: 'banners'
      end
    end
  end

  ###################################
  ## Engines - Need to be here     ##
  ###################################

  mount Clapme::Engine, at: '/'

end
