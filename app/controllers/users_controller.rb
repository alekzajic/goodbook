class UsersController < ApplicationController

  before_action :set_user
  before_action :authenticate_user!


  # User Detail view
  # /users/:id
  def show
    # Find all reviews that belong to this user
    @reviews = Review.where(user_id: @user.id).order('created_at DESC')

    # Set average rating
    @avg_rating = 0
    # Set reviews by user count
    @reviews_count = 0

    # If there are reviews by user
    unless @reviews.blank?
      # Set average rating
      @avg_rating = @reviews.average(:rating).round(2,2)

      # Set reviews count
      @reviews_count = @reviews.count
    end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:avatar)
  end


end