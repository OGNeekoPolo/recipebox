class StepsController < ApplicationController
  def index
  end

  def new
    @step = Step.new
  end

  def create
    @step = Step.new(step_params)
    @step.recipe_id = session[:current_user_id]
    if @step.save
      @recipe = Recipe.find(@step.recipe_id)
      redirect_to recipe_path(@recipe)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    @step = Step.find(params[:id])
  end

  def update
    @step = Step.find(params[:id])

    if @step.update(step_params)
      @recipe = Recipe.find(@step.recipe_id)
      redirect_to recipe_path(@recipe)
    else
      render 'edit'
    end
  end

  def destroy
    @step = Step.find(params[:id])
    @recipe = Recipe.find(@step.recipe_id)
    @step.destroy
    redirect_to recipe_path(@recipe)
  end

  private
    def step_params
      params.require(:step).permit(:description)
    end
end
