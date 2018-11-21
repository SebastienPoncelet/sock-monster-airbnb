class Api::V1::MachinesController < Api::V1::BaseController

  def index
    @machines = Machine.all
  end

  def show
    @machine = Machine.find(params[:id])
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(machine_params)
    if @machine.save
      render :show, status: :create
      # The render allows WeChat frontend to see what's going on when adding a new element.
    else
      render_error
  end

  private

  def machine_params
    params.require(:machine).permit(:name, :location, :sock_count, :availability, :price, :user_id)

  end

  # The render will have to be used too when updating an element so that WeChat frontend can see it.

end
