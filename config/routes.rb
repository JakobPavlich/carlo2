Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root "pages#home"
  get "konectedna" => "pages#konectedna"
  get "ponedeljek0610" => "pages#ponedeljek0610"
  get "torek0710" => "pages#torek0710"
  get "sreda0810" => "pages#sreda0810"
  get "cetrtek0910" => "pages#cetrtek0910"
  get "petek1010" => "pages#petek1010"
  get "ponedeljek1310" => "pages#ponedeljek1310"
  get "praznastran" => "pages#praznastran"
  get "torek1410" => "pages#torek1410"
  get "sreda1510" => "pages#sreda1510"
  get "cetrtek1610" => "pages#cetrtek1610"
  get "petek1710" => "pages#petek1710"
  get "petek2410" => "pages#petek2410"
end
