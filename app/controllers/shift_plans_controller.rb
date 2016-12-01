class ShiftPlansController < ApplicationController
  before_action :set_shift_plan, only: [:show, :edit, :update, :destroy]

  # GET /shift_plans
  # GET /shift_plans.json
  def index
    @shift_plans = ShiftPlan.all
  end

  # GET /shift_plans/1
  # GET /shift_plans/1.json
  def show
  end

  # GET /shift_plans/new
  def new
    @shift_plan = ShiftPlan.new
  end

  # GET /shift_plans/1/edit
  def edit
  end

  # POST /shift_plans
  # POST /shift_plans.json
  def create
    @shift_plan = ShiftPlan.new(shift_plan_params)

    respond_to do |format|
      if @shift_plan.save
        format.html { redirect_to @shift_plan, notice: 'Shift plan was successfully created.' }
        format.json { render :show, status: :created, location: @shift_plan }
      else
        format.html { render :new }
        format.json { render json: @shift_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shift_plans/1
  # PATCH/PUT /shift_plans/1.json
  def update
    respond_to do |format|
      if @shift_plan.update(shift_plan_params)
        format.html { redirect_to @shift_plan, notice: 'Shift plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @shift_plan }
      else
        format.html { render :edit }
        format.json { render json: @shift_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shift_plans/1
  # DELETE /shift_plans/1.json
  def destroy
    @shift_plan.destroy
    respond_to do |format|
      format.html { redirect_to shift_plans_url, notice: 'Shift plan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift_plan
      @shift_plan = ShiftPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shift_plan_params
      params.require(:shift_plan).permit(:name, planned_roles_attributes: [:id, :role_id, :associate_id, :employee_id, :_destroy])
    end
end
