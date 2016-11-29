class PlannedRolesController < ApplicationController
  before_action :set_planned_role, only: [:show, :edit, :update, :destroy]

  # GET /planned_roles
  # GET /planned_roles.json
  def index
    @planned_roles = PlannedRole.all
  end

  # GET /planned_roles/1
  # GET /planned_roles/1.json
  def show
  end

  # GET /planned_roles/new
  def new
    @planned_role = PlannedRole.new
  end

  # GET /planned_roles/1/edit
  def edit
  end

  # POST /planned_roles
  # POST /planned_roles.json
  def create
    @planned_role = PlannedRole.new(planned_role_params)

    respond_to do |format|
      if @planned_role.save
        format.html { redirect_to @planned_role, notice: 'Planned role was successfully created.' }
        format.json { render :show, status: :created, location: @planned_role }
      else
        format.html { render :new }
        format.json { render json: @planned_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planned_roles/1
  # PATCH/PUT /planned_roles/1.json
  def update
    respond_to do |format|
      if @planned_role.update(planned_role_params)
        format.html { redirect_to @planned_role, notice: 'Planned role was successfully updated.' }
        format.json { render :show, status: :ok, location: @planned_role }
      else
        format.html { render :edit }
        format.json { render json: @planned_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planned_roles/1
  # DELETE /planned_roles/1.json
  def destroy
    @planned_role.destroy
    respond_to do |format|
      format.html { redirect_to planned_roles_url, notice: 'Planned role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planned_role
      @planned_role = PlannedRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planned_role_params
      params.require(:planned_role).permit(:associate_id, :role_id)
    end
end
