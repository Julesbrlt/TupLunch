class IngredientsListsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_ingredients_list, only: [:update, :destroy]

  def index
    @lists = current_user.recap_recipes.includes(recipe: { recipe_ingredients: :ingredient })
  end

end
