class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  #index, show, new, edit, create, update, destroy


  def index
    @posts = Post.all
  end

  def show

  end




  def new

    @post = Post.new
  end

  def edit

  end



  def create

    @post = Post.new(post_params)

    if @post.save
      flash[:success] = "Saved!"
      redirect_to @post
    else
      flash[:error] = "Error!"
      render 'new'
    end

  end



  def update


    if @post.update(post_params)
      flash[:success] = "Saved!"
      redirect_to @post
    else
      flash[:error] = "Error!"
      render 'edit'
    end
  end



  def destroy
    @post.destroy
    redirect_to posts_path
  end



  private

    def post_params
      params.require(:post).permit(:title, :description, :link)
    end

    def find_post
      @post = Post.find(params[:id])
    end





end
