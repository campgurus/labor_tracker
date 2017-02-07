class PlanSizesController < ApplicationController
  before_action :set_plan_size, only: [:show, :edit, :update, :destroy]

  # GET /plan_sizes
  # GET /plan_sizes.json
  def index
    @plan_sizes = PlanSize.all
  end

  # GET /plan_sizes/1
  # GET /plan_sizes/1.json
  def show
  end

  # GET /plan_sizes/new
  def new
    @plan_size = PlanSize.new
  end

  # GET /plan_sizes/1/edit
  def edit
  end

  # POST /plan_sizes
  # POST /plan_sizes.json
  def create
    @plan_size = PlanSize.new(plan_size_params)

    respond_to do |format|
      if @plan_size.save
        format.html { redirect_to @plan_size, notice: 'Plan size was successfully created.' }
        format.json { render :show, status: :created, location: @plan_size }
      else
        format.html { render :new }
        format.json { render json: @plan_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_sizes/1
  # PATCH/PUT /plan_sizes/1.json
  def update
    respond_to do |format|
      if @plan_size.update(plan_size_params)
        format.html { redirect_to @plan_size, notice: 'Plan size was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan_size }
      else
        format.html { render :edit }
        format.json { render json: @plan_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_sizes/1
  # DELETE /plan_sizes/1.json
  def destroy
    @plan_size.destroy
    respond_to do |format|
      format.html { redirect_to plan_sizes_url, notice: 'Plan size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_size
      @plan_size = PlanSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_size_params
      params.require(:plan_size).permit(:packer, :slam_operator, :water_spider, :shortstop, :problem_solver, :tote_replenishment, :process_guide, :process_assistant)
    end
end
