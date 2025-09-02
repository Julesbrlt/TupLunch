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
end
