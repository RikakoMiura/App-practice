Rails.application.routes.draw do
  root :to =>'homes#top'
  get 'top' => 'homes#top'
  post 'books'=>'books#create'
  get 'books'=>'books#index'
  get 'edit'=>'books#edit'
  get 'books/:id/edit'=>'books#edit', as:'edit_book_path'
  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
