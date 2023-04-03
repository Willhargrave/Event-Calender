class PlanController < ApplicationController
  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      flash[:notice] = "Plan created successfully"
      render :new
    else
      flash[:alert] = "Plan couldn't be created"
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
