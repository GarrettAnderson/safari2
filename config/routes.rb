Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :animals do
member do
  put 'increent'
end

# collection do
#   put 'killall'
# end

  end
end
