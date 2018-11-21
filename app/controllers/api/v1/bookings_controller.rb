class Api::V1::BookingsController < ActionController::Base

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      render :show, status: :create
      # The render allows WeChat frontend to see what's going on when adding a new element.
    else
      render_error
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :price, :status, :user_id, :machine_id)
  end

  # The render will have to be used too when updating an element so that WeChat frontend can see it.

end
