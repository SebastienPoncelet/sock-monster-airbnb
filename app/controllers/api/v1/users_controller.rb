class Api::V1::UsersController < Api::V1::BaseController
# before_action :set_user, only: [ :show, :update, :destroy  ]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])

  end

  private

  # def set_user
  # end

end
