class RatingsController < ApplicationController

  def create
    @rating = current_user.ratings.create(rating_params)
    @movie=Movie.find(rating_params[:movie_id])
    redirect_to @movie

  end





  private
  def rating_params
    params.require(:rating).permit(:rate, :movie_id)
  end

end
