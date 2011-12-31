class SemesterPatternsController < ApplicationController
  # GET /semester_patterns
  # GET /semester_patterns.json
  def index
    @semester_patterns = SemesterPattern.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @semester_patterns }
    end
  end

  # GET /semester_patterns/1
  # GET /semester_patterns/1.json
  def show
    @semester_pattern = SemesterPattern.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @semester_pattern }
    end
  end

  # GET /semester_patterns/new
  # GET /semester_patterns/new.json
  def new
    @semester_pattern = SemesterPattern.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @semester_pattern }
    end
  end

  # GET /semester_patterns/1/edit
  def edit
    @semester_pattern = SemesterPattern.find(params[:id])
  end

  # POST /semester_patterns
  # POST /semester_patterns.json
  def create
    @semester_pattern = SemesterPattern.new(params[:semester_pattern])

    respond_to do |format|
      if @semester_pattern.save
        format.html { redirect_to @semester_pattern, notice: 'Semester pattern was successfully created.' }
        format.json { render json: @semester_pattern, status: :created, location: @semester_pattern }
      else
        format.html { render action: "new" }
        format.json { render json: @semester_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /semester_patterns/1
  # PUT /semester_patterns/1.json
  def update
    @semester_pattern = SemesterPattern.find(params[:id])

    respond_to do |format|
      if @semester_pattern.update_attributes(params[:semester_pattern])
        format.html { redirect_to @semester_pattern, notice: 'Semester pattern was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @semester_pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /semester_patterns/1
  # DELETE /semester_patterns/1.json
  def destroy
    @semester_pattern = SemesterPattern.find(params[:id])
    @semester_pattern.destroy

    respond_to do |format|
      format.html { redirect_to semester_patterns_url }
      format.json { head :ok }
    end
  end
end
