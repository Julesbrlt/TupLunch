class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @recipes = Recipe.all.select{|recipe|recipe.photos.any?}
  end

  def dashboard
    @user = current_user
    @recap_recipes = @user.recap_recipes
    @profile = @user.profile
    @favorites = @user.favorites

  end

  def landing
  end

end
