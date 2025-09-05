class RecapRecipesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recap_recipe, only: [:servings, :destroy]

  def index
    @recap_recipes = current_user.recap_recipes.includes(:recipe).sort()
  end

  def create
    @profile = current_user.profile
    @recipe = Recipe.find(params[:recipe_id])
    RecapRecipe.find_or_create_by!(recipe: @recipe, user: current_user)

    @recap_recipes = current_user.recap_recipes.includes(:recipe)
    puts " Profile Total Recipes : #{@profile.total_recipes}"
        puts " Recap Recipes count : #{@recap_recipes.count}"
    if @recap_recipes.count >= @profile.total_recipes
      render json: { redirect_url: recap_recipes_path } and return
    end

    total_price = @recap_recipes.sum { |rr| rr.recipe.price }
    total_calories = @recap_recipes.sum { |rr| rr.recipe.calories }

    if total_price > @profile.total_budget || total_calories > @profile.total_calories
    flash.now[:alert] = "⚠️ Attention vous dépassez votre budget ou vos calories"
    end
  end

  def destroy
    @recap_recipe.destroy
    redirect_to recap_recipes_path(@recap_recipe), notice: "Recette retirée de vos favoris."
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
