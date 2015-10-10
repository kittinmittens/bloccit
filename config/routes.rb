Rails.application.routes.draw do

resources :advertisement

resources :posts

get 'about' => 'welcome#about'

root to: 'welcome#index'

end
