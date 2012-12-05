Scisco::Application.routes.draw do
  resources :questions do
    put :upvote, on: :member
  end

  root to: 'questions#index'
end
