# == Route Map
#
#                   Prefix Verb   URI Pattern                      Controller#Action
#         new_user_session GET    /users/sign_in(.:format)         devise/sessions#new
#             user_session POST   /users/sign_in(.:format)         devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)        devise/sessions#destroy
#            user_password POST   /users/password(.:format)        devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)    devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)   devise/passwords#edit
#                          PATCH  /users/password(.:format)        devise/passwords#update
#                          PUT    /users/password(.:format)        devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)          devise/registrations#cancel
#        user_registration POST   /users(.:format)                 devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)         devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)            devise/registrations#edit
#                          PATCH  /users(.:format)                 devise/registrations#update
#                          PUT    /users(.:format)                 devise/registrations#update
#                          DELETE /users(.:format)                 devise/registrations#destroy
#                     root GET    /                                questions#index
#            like_question PUT    /questions/:id/like(.:format)    questions#upvote
#         dislike_question PUT    /questions/:id/dislike(.:format) questions#downvote
#                questions GET    /questions(.:format)             questions#index
#                          POST   /questions(.:format)             questions#create
#             new_question GET    /questions/new(.:format)         questions#new
#            edit_question GET    /questions/:id/edit(.:format)    questions#edit
#                 question GET    /questions/:id(.:format)         questions#show
#                          PATCH  /questions/:id(.:format)         questions#update
#                          PUT    /questions/:id(.:format)         questions#update
#                          DELETE /questions/:id(.:format)         questions#destroy
#

Rails.application.routes.draw do

  devise_for :users

  root 'welcome#index'

  resources :questions do
    member do
      put "like", to: "questions#upvote"
      put "dislike", to: "questions#downvote"
    end
  end


end
