class RecapRecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recap_recipes = RecapRecipe.all
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
  end

end
