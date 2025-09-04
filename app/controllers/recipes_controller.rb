class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @profile = current_user.profile
    @recap_recipes = current_user.recap_recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
