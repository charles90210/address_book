class UsersController < ApplicationController
  def index
  end

  def register
    @user = User.new
    @user.given_name = params[:given_name]
    @user.family_name = params[:family_name]
    @user.email = params[:email]
    @user.home_address = params[:home_address]
    if @user.save
      render 'register.html.erb'
    else
      render text: 'could not add user'
    end
  end

end
