class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
    @favorites = current_user.favorites
  end

  def new
    @favorite = Favorite.new
  end

  def create

    @recipe = Recipe.find(params[:recipe_id])
    Favorite.find_or_create_by!(recipe: @recipe, user: current_user)
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @favorite = current_user.favorites.find_by(recipe: @recipe)
    @favorite.destroy

    redirect_to dashboard_path, notice: "Recette retirée de vos favoris."
  end

end
