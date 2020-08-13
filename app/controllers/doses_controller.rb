class DosesController < ApplicationController

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to cocktail_path
    else
      render :new
    end

  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end
end
