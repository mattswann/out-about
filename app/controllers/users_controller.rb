class UsersController < ApplicationController
  before_filter :set_user, only: [:show, :edit, :update]
  before_filter :validate_authorization_for_user, only: [:edit, :update]

  def index

    redirect_to pages_path

  end



  # GET /users/1
  def show
    # @users = User.all
  end

  # GET /users/1/edit
  def edit
  end


  # PATCH/PUT /users/1
  def update
    if @user.update_attributes(params[:user])
      redirect_to pages_path @user, notice: 'User was successfully updated.'
    else
      render action: 'edit'
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def validate_authorization_for_user
       redirect_to pages_path unless @user == current_user
    end

  end
