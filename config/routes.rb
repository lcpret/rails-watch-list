Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[new create index show] do
    resources :bookmarks, only: %i[new create show delete]
  end

end
