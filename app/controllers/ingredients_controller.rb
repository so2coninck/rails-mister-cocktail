class IngredientsController < ApplicationController
 before_action :set_ingredient, only:[:create, :new, :show, :edit, :update, :destroy]

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    elsif
      render :new
    end
  end

  def update
    if @ingredient.update(ingredient_params)
      redirect_to ingredients_path
    else
    render :edit
    end
  end

  def destroy
    @ingredient.destroy
    redirect_to ingredients_path
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end

#attention il y a des erreurs dans le code des filles avec les I.....










end
