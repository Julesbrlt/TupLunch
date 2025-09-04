class RecapRecipesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recap_recipes, only: [:index, :destroy]

  def index
  end

  def create
    @profile = current_user.profile
    @recipe = Recipe.find(params[:recipe_id])
    RecapRecipe.find_or_create_by!(recipe: @recipe, user: current_user)
    # @recap_recipes = current_user.recap_recipes.includes(:recipe)
    # if @profile.total_recipes >= @recap_recipes.count
    #   redirect_to recap_recipes_path
    # end

    # total_price = @recap_recipes.sum { |rr| rr.recipe.price }
    # total_calories = @recap_recipes.sum { |rr| rr.recipe.calories }

    # if total_price > @profile.total_budget || total_calories > @profile.total_calories
    # flash.now[:alert] = "⚠️ Attention vous dépassez votre budget ou vos calories"
    # end
  end

  def destroy
    @recap_recipe.destroy

    redirect_to dashboard_path, notice: "Recette retirée de vos favoris."
  end

  def dashboard
    @user = current_user
    @recap_recipes = @user.recap_recipes
    @profile = @user.profile
    @favorites = @user.favorites
  end

  private

  def set_recap_recipes
    @recap_recipes = current_user.recap_recipes.includes(:recipe)
  end
end
