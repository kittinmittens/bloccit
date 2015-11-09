class Api::V1::UsersController < Api::V1::BaseController
  before_filter :authenticate_user
  before_filter :authorize_user

  def show
    @comment = @post.comments.find(params[:id])
    render json: user.to_json, status: 200
  end

  def index
    comment= Comment.all
    render json: users.to_json, status: 200
  end
end
