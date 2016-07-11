class UsersController < ApplicationController

  def index
  	@users = User.all
  end

  def new
	 @user = User.new
  end

  def create
		@user = User.new(params[:user])
      if @user.save
        flash[:notice] = "You signed up don't cha know"
        flash[:color] = "valid"
        redirect_to "/users/signinform"
      else 
        flash[:notice] = "Form is invalid. Please fill out all fields."
        flash[:color] = "invalid"
        redirect_to "/users/new"
      end
  end

  def edit
	  @user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(name: params[:user][:name])
  	@user.update(age: params[:user][:age])
  	redirect_to :back
  end 

  def signinform
    @user = User.where(name: params[:name]).first
  end

  def signin
    @user = User.where(name: params[:name]).first     #.first to get rid of array
    if @user && @user.password == params[:password]
      session[:user_id] = @user.id
      flash[:notice] = "Yay you signed in :) Welcome #{@user.name}!"
      redirect_to "/posts"
    else
      flash[:notice] = "You need a valid sign-in :("
      redirect_to "/users/signinform"
    end
  end

  def signout
    session[:user_id] = nil
    flash[:notice] = "You have signed out. Come back soon for more Tumblr."
    redirect_to "/"
  end
  
end
