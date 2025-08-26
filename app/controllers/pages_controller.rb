class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @favorites = @user.favorites
  def welcome #page d'accueil
  end
end
