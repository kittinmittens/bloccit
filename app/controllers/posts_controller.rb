class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @posts = Post.find(params[:id])
  end

  def create
   # #9
       @post = Post.new
       @post.title = params[:post][:title]
       @post.body = params[:post][:body]

   # #10
       if @post.save
   # #11
         flash[:notice] = "Post was saved."
         redirect_to @post
       else
   # #12
         flash[:error] = "There was an error saving the post. Please try again."
         render :new
       end
     end


  def new
    @post = Post.new
  end

  def edit
  end
end
