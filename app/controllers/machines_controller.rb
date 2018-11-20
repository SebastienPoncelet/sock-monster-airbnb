class MachinesController < ApplicationController
  def index
    @machine = Machine.all
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
    # Need to find the syntax to ship it in the API for frontend to use.
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
