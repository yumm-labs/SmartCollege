class DepartmentStaffsController < ApplicationController
  # GET /department_staffs
  # GET /department_staffs.json
  def index
    @department_staffs = DepartmentStaff.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @department_staffs }
    end
  end

  # GET /department_staffs/1
  # GET /department_staffs/1.json
  def show
    @department_staff = DepartmentStaff.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @department_staff }
    end
  end

  # GET /department_staffs/new
  # GET /department_staffs/new.json
  def new
    @department_staff = DepartmentStaff.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @department_staff }
    end
  end

  # GET /department_staffs/1/edit
  def edit
    @department_staff = DepartmentStaff.find(params[:id])
  end

  # POST /department_staffs
  # POST /department_staffs.json
  def create
    @department_staff = DepartmentStaff.new(params[:department_staff])

    respond_to do |format|
      if @department_staff.save
        format.html { redirect_to @department_staff, notice: 'Department staff was successfully created.' }
        format.json { render json: @department_staff, status: :created, location: @department_staff }
      else
        format.html { render action: "new" }
        format.json { render json: @department_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /department_staffs/1
  # PUT /department_staffs/1.json
  def update
    @department_staff = DepartmentStaff.find(params[:id])

    respond_to do |format|
      if @department_staff.update_attributes(params[:department_staff])
        format.html { redirect_to @department_staff, notice: 'Department staff was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @department_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /department_staffs/1
  # DELETE /department_staffs/1.json
  def destroy
    @department_staff = DepartmentStaff.find(params[:id])
    @department_staff.destroy

    respond_to do |format|
      format.html { redirect_to department_staffs_url }
      format.json { head :ok }
    end
  end
end
