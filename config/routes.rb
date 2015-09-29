Rails.application.routes.draw do
  get 'welcome/infex'

  get 'welcome/about'

  get 'welcome/contact'

  root to: 'welcome#infex'
end
