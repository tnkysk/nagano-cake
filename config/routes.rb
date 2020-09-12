Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :admins,
  path: "admin",
  controllers:{
    sessions: 'devise/admins/sessions'
  }

end
