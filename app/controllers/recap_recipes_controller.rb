class RecapRecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recap_recipes = current_user.recap_recipes.includes(:recipe)
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    RecapRecipe.find_or_create_by!(recipe: @recipe, user: current_user)
    redirect_to recap_recipes_path
  end


end
