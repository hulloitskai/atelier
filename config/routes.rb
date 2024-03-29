# typed: strict
# frozen_string_literal: true

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # == Redirects
  constraints subdomain: "www" do
    get "(*any)" => redirect(subdomain: "", status: 302)
  end

  # == Healthcheck
  Healthcheck.routes(self)

  # == Errors
  scope controller: :errors do
    match "/401", action: :unauthorized, via: :all
    match "/404", action: :not_found, via: :all
    match "/422", action: :unprocessable_entity, via: :all
    match "/500", action: :internal_server_error, via: :all
  end

  # == Devise
  devise_for :users,
             skip: %i[sessions confirmations passwords],
             controllers: {
               omniauth_callbacks: "users/omniauth_callbacks",
               registrations: "users/registrations",
             },
             path: "/user",
             path_names: {
               sign_up: "register",
               edit: "settings",
             }
  devise_scope :user do
    resource :sessions,
             path: "/",
             module: "users",
             as: :user_session,
             only: [] do
               get :login, action: :new, as: :new
               post :login, action: :create, as: ""
               post :logout, action: :destroy, as: :destroy
             end
    scope :user, module: "users", as: :user do
      resource :confirmation,
               only: %i[new show],
               path: "/verification",
               path_names: {
                 new: "resend",
               }
      resource :password,
               only: %i[new edit update],
               path_names: {
                 new: "reset",
                 edit: "change",
               }
    end
  end

  # == GraphQL
  scope :graphql, controller: :graphql do
    get "/", action: :graphiql, as: :graphiql
    post "/", action: :execute, as: :graphql
  end

  # == Pages
  root "home#show"
  get "/admin" => "admin#show"
  get "/discord" => redirect("https://discord.gg/GwhpAuekw6")
  get "/insta" => redirect("https://instagram.com/atelier.ubc", status: 302)
  get "/src" => redirect("https://github.com/hulloitskai/atelier", status: 302)

  # == Development
  if Rails.env.development?
    mount GoodJob::Engine => "/good_job"
    get "/test" => "test#show"
    get "/mailcatcher" => redirect("//localhost:1080", status: 302)
  end

  # == Administration
  unless Rails.env.development?
    authenticate :user, ->(user) {
      user = T.let(user, User)
      user.admin?
    } do
      mount GoodJob::Engine => "/good_job"
    end
  end
end
