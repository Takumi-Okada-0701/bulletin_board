Rails.application.routes.draw do
  root 'home#top'
  
  # devise
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  # talk_threads
  get 'talk_threads/search' => 'talk_threads#search', as: 'search_talk_threads'
  resources :talk_threads, :only => [:new, :create, :show]

  # response作成処理
  post 'responses/:id' => 'responses#create',         as: 'responses'
end
