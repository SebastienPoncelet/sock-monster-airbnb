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
    @machine.save
  end

  private

  def machine_params
    params.require(:machine).permit(:name, :location, :sock_count, :availability, :price, :user_id)

  end

end
