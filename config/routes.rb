Rails.application.routes.draw do
  get "dashboards/index"
  get "applicants/thanks"
  resources :applicants
  resources :assessment_levels
  resources :assessments
  resources :cities
  resources :contact_took_trainings
  resources :contacts
  resources :countries
  resources :event_types
  resources :events
  resources :job_levels
  resources :job_titles
  resources :locations
  resources :notes
  resources :organizations
  resources :passwords, param: :token
#  resources :pages
  resource :registration
  resource :session
  resources :social_media_types
  resources :states
  resources :trainings
  resources :users

  get "pages/about"
  get "pages/changelog"
  get "pages/faq"
  get "pages/index"
  get "pages/license"
  get "pages/privacy"
  get "pages/guide"
  get "pages/terms"
  get "about" => "pages#about"
  get "changelog" => "pages#changelog"
  get "faq" => "pages#faq"
  get "license" => "pages#license"
  get "privacy" => "pages#privacy"
  get "guide" => "pages#guide"
  get "terms" =>"pages#terms"


  get 'contacts/search' => 'contacts#search'
  get 'reports/assessment_levels_to_date'
  get 'reports/current_assessment_levels'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root 'pages#home'
end
