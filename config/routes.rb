Rails.application.routes.draw do
  get 'books' => 'books#index' , as: 'book'
  get 'books/:id' => 'books#show' ,as: 'show_book'
  get 'books/:id/edit' => 'books#edit' ,as: 'edit_book'
  patch 'books/:id' => 'books#update' ,as: 'update_book'
  delete 'books/:id' => 'books#destroy' ,as: 'destroy_book'
  post 'books' => 'books#create'
  get 'top' => 'homes#top'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
