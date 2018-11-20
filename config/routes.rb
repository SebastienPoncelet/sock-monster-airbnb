Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :machines do
    # A booking has the machine but only necessary when the booking is created.
    resources :bookings, only: [:new, :create]
      # The reviews concern either:
      # - A machine that has been used. Machine id accessible through bookings.
      # - A machine user> His id is accessible through bookings.
      # Want to create, update or delete a comment.
  end

  # Not nested anymore for updating and deleting because not storing new machine id as it's already been done when creating a booking.
  # A review isn't created when a booking is made
  ressources :bookings, only: [:edit, :update, :destroy] do
    ressources :reviews, only: [:new, :create]
  end
  #  Not necessary is no buttons or ways of doing those actions
  # ressources :reviews, only: [:edit, :update, :destroy]
end

# For web app no need to nest bookings in users because you'd use the current user, and its id
