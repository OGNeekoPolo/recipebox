class FixinsController < ApplicationController
  def new
    @fixin = Fixin.new
  end

  def create
    @fixin = Fixin.new(fixin_params)
    @fixin.recipe_id = session[:current_user_id]
    if @fixin.save
      @recipe = Recipe.find(@fixin.recipe_id)
      redirect_to recipe_path(@recipe)
    end
  end

  def show
  end

  def edit
    @fixin = Fixin.find(params[:id])
  end

  def update
    @fixin = Fixin.find(params[:id])
    if @fixin.update(fixin_params)
      @recipe = Recipe.find(@fixin.recipe_id)
      redirect_to recipe_path(@recipe)
    else
      render 'edit'
    end
  end

  def destroy
    @fixin = Fixin.find(params[:id])
    @recipe = Recipe.find(@fixin.recipe_id)
    @fixin.destroy
    redirect_to recipe_path(@recipe)
  end

  private
    def fixin_params
      params.require(:fixin).permit(:name, :amount)
    end
end
