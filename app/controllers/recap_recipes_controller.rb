class RecapRecipesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recap_recipe, only: [:servings]

  def index
    @recap_recipes = current_user.recap_recipes.includes(:recipe).sort()
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    RecapRecipe.find_or_create_by!(recipe: @recipe, user: current_user)
    redirect_to recap_recipes_path
  end

  def destroy
    @recap_recipe = current_user.recap_recipes.find(params[:id])
    @recap_recipe.destroy

    redirect_to dashboard_path, notice: "Recette retirée de vos favoris."
  end

  def dashboard
    @user = current_user
    @recap_recipes = @user.recap_recipes
    @profile = @user.profile
    @favorites = @user.favorites
  end

  def servings
    recap = RecapRecipe.find(params[:id])
    recap.update!(servings: params[:servings].to_i)
    redirect_to recap_recipes_path
  end

private

  def set_recap_recipe
    @recap_recipe = RecapRecipe.find(params[:id])
  end
end
