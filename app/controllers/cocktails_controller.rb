class CocktailsController < ApplicationController

  def main

  end

  def index
    if params[:search].nil?
      @cocktails = Cocktail.all
    else
      @cocktails = Cocktail.where('name LIKE ?', "%#{params[:search]}%")
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
