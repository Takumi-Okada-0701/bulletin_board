Rails.application.routes.draw do
  root 'home#top'
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
end
