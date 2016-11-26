class DosesController < ApplicationController
 before_action :set_cocktail

  def create
@dose = Doses.new(dose_params)
@dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktail/show"
    end
  end

  def destroy
    @dose.destroy!
    redirect_to cocktail_path
  end

private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
