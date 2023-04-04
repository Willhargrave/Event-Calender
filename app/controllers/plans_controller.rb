class PlansController < ApplicationController
  belongs_to :user
  def new
    @plan = Plan.new
  end

  def create
    @plan = current_user.plans.new(plan_params)
    if @plan.save
      flash[:notice] = "Plan created successfully"
      puts "plan saved"
      redirect_to root_path

    else
      flash[:alert] = "Plan couldn't be created"
      puts @plan.errors.full_messages
      render :new, status: :unprocessable_entity
      raise
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
