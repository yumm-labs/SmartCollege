class CourseDurationsController < ApplicationController
  # GET /course_durations
  # GET /course_durations.json
  def index
    @course_durations = CourseDuration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_durations }
    end
  end

  # GET /course_durations/1
  # GET /course_durations/1.json
  def show
    @course_duration = CourseDuration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_duration }
    end
  end

  # GET /course_durations/new
  # GET /course_durations/new.json
  def new
    @course_duration = CourseDuration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_duration }
    end
  end

  # GET /course_durations/1/edit
  def edit
    @course_duration = CourseDuration.find(params[:id])
  end

  # POST /course_durations
  # POST /course_durations.json
  def create
    @course_duration = CourseDuration.new(params[:course_duration])

    respond_to do |format|
      if @course_duration.save
        format.html { redirect_to @course_duration, notice: 'Course duration was successfully created.' }
        format.json { render json: @course_duration, status: :created, location: @course_duration }
      else
        format.html { render action: "new" }
        format.json { render json: @course_duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /course_durations/1
  # PUT /course_durations/1.json
  def update
    @course_duration = CourseDuration.find(params[:id])

    respond_to do |format|
      if @course_duration.update_attributes(params[:course_duration])
        format.html { redirect_to @course_duration, notice: 'Course duration was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_duration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_durations/1
  # DELETE /course_durations/1.json
  def destroy
    @course_duration = CourseDuration.find(params[:id])
    @course_duration.destroy

    respond_to do |format|
      format.html { redirect_to course_durations_url }
      format.json { head :ok }
    end
  end
end
