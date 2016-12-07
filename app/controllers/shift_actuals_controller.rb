class ShiftActualsController < ApplicationController
  before_action :set_shift_actual, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: ENV["BASIC_USER"], password: ENV["BASIC_PASSWORD"], except: :show

  # GET /shift_actuals
  # GET /shift_actuals.json
  def index
    @shift_actuals = ShiftActual.all
  end

  # GET /shift_actuals/1
  # GET /shift_actuals/1.json
  def show
    @shifts = ShiftActual.find(params[:id]).shifts
    @shift_plan = ShiftPlan.last
  end

  # GET /shift_actuals/new
  def new
    @shift_actual = ShiftActual.new
  end

  # GET /shift_actuals/1/edit
  def edit
  end

  # POST /shift_actuals
  # POST /shift_actuals.json
  def create
    @shift_actual = ShiftActual.new(shift_actual_params)

    respond_to do |format|
      if @shift_actual.save
        format.html { redirect_to @shift_actual, notice: 'Shift actual was successfully created.' }
        format.json { render :show, status: :created, location: @shift_actual }
      else
        format.html { render :new }
        format.json { render json: @shift_actual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shift_actuals/1
  # PATCH/PUT /shift_actuals/1.json
  def update
    respond_to do |format|
      if @shift_actual.update(shift_actual_params)
        format.html { redirect_to @shift_actual, notice: 'Shift actual was successfully updated.' }
        format.json { render :show, status: :ok, location: @shift_actual }
      else
        format.html { render :edit }
        format.json { render json: @shift_actual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shift_actuals/1
  # DELETE /shift_actuals/1.json
  def destroy
    @shift_actual.destroy
    respond_to do |format|
      format.html { redirect_to shift_actuals_url, notice: 'Shift actual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift_actual
      @shift_actual = ShiftActual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shift_actual_params
      params.require(:shift_actual).permit(:date, :name)
    end
end
