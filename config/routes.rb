Rails.application.routes.draw do
  get '/', to:'home#index', as:"index"
  get 'visiteurs/new', to:"visiteurs#new", as:"visiteurs_new"
  post 'visiteurs/create', to:"visiteurs#create", as: "newsletter"
end
