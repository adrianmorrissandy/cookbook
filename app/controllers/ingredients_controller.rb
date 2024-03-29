class IngredientsController < ApplicationController
   def index
    @ingredient = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    ingredient = Ingredient.create(params[:ingredient])
    redirect_to(ingredient)
  end

  def show
    @ingredient  = Ingredient.find(params[:id])
    @book = @ingredient.recipes.first.book
  end

  def edit
    @ingredient  = Ingredient.find(params[:id])
  end

  def update
    ingredient = Ingredient.find(params[:id])
    ingredient.update_attributes(params[:ingredient])
    redirect_to(ingredient)
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.delete
    redirect_to(ingredients_path)
  end

end