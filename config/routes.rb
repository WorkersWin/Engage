Rails.application.routes.draw do
  resources :assessments
  resources :events
  resources :event_types
  resources :contacts
  resources :assessment_levels
  resources :trainings
  resources :job_titles
  resources :job_levels
  resources :social_media_types
  root 'pages#home'
  get 'about' => 'pages#about'
  devise_for :users
end
