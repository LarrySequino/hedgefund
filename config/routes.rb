Hedgefund::Application.routes.draw do
  get "hedgehogs" => "hedgehogs#index"
  post "hedgehogs" => "hedgehogs#create"
  get "hedgehogs/new" => "hedgehogs#new"
  get "hedgehogs/:id" => "hedgehogs#show"
end
