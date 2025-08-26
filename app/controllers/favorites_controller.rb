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
    current_user.favorites.create(recipe: @recipe)
    redirect_to @recipe, notice: "Recette ajoutée à vos favoris !"
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @favorite = current_user.favorites.find_by(recipe: @recipe)
    @favorite.destroy
    redirect_to favorites_path, notice: "Recette retirée de vos favoris."
  end
end
