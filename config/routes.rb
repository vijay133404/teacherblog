Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  root 'teachers#index'

   resources:teachers

   get "/my_teachers" =>"teachers#my_teachers"
end
