Rails.application.routes.draw do
  get 'welcome/infex'

  get 'welcome/about'

  root to: 'welcome#infex'
end
