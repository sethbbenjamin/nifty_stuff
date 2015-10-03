class UsersController < ApplicationController


  before_action :find_user, only: [:show]

  #index, show, new, edit, create, update, destroy

  def index
  end

  def show

  end

  def new

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end

  private
    def find_user
      @user = User.find(params[:id])
    end




end
