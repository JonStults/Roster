Rails.application.routes.draw do
  root 'employees#index'
  get '/vote/:id' => 'employees#vote'
end
