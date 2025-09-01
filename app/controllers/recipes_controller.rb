class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @profile = current_user.profile
    @choice_recipes = @profile.total_recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
