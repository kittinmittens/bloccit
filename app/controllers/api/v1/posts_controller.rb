class Api::V1::UsersController < Api::V1::BaseController
  before_filter :authenticate_user
  before_filter :authorize_user

  def show
    @posts = Post.find(params[:id])
    render json: user.to_json, status: 200
  end

  def index
    @posts= Post.all
    render json: users.to_json, status: 200
  end
end
