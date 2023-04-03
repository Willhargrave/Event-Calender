class PlanController < ApplicationController
  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      alert("saved")
    else
      alert("didn't save")
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
