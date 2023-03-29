class PlanController < ApplicationController
  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to :home
    else
      render :new
    end
  end

  def destroy
    @plan = Plan.find(params[:id])
    if @plan.destroy
      redirect_to :home
    else
      render :show, status: :unprocessible_entity
    end
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :date, :time, :description)
  end
end
