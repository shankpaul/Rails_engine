Rails.application.routes.draw do
  resources :employees
  resources :packages
  resources :companies do
  	mount Leave::Engine => "companies/", as: 'leave'
  end
  
end
