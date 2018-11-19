Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :machines do
    # A booking has the machine but only necessary when the booking is created.
    resources :bookings, only: [:new, :create] do
      # The reviews concern either:
      # - A machine that has been used. Machine id accessible through bookings.
      # - A machine user> His id is accessible through bookings.
      # Want to create, update or delete a comment.
      resources :reviews

    end

  end

end


# For web app no need to nest bookings in users because you'd use the current user, and its id
