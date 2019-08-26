class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(address_type: 'work')
    @recipe.ingredients.build(address_type: 'home')
  end

  def create
  end
end
