class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:id])
    # @ingredients = ingredients.find(params[:cocktail_id])
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
    render :new
  end
  end


  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end


