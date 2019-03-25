Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :animals do
member do
  put 'increment'
  # here is where you put the ruby code for the increment logic
  
end

# collection do
#   put 'killall'
# end

  end
end
