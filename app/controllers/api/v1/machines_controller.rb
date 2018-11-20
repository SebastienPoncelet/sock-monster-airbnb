class Api::V1::MachinesController < Api::V1::BaseController

  def index
    @machines = Machine.all
  end

end
