class CourseSubjectsController < ApplicationController
  # GET /course_subjects
  # GET /course_subjects.json
  def index
    @course_subjects = CourseSubject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_subjects }
    end
  end

  # GET /course_subjects/1
  # GET /course_subjects/1.json
  def show
    @course_subject = CourseSubject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_subject }
    end
  end

  # GET /course_subjects/new
  # GET /course_subjects/new.json
  def new
    @course_subject = CourseSubject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_subject }
    end
  end

  # GET /course_subjects/1/edit
  def edit
    @course_subject = CourseSubject.find(params[:id])
  end

  # POST /course_subjects
  # POST /course_subjects.json
  def create
    @course_subject = CourseSubject.new(params[:course_subject])

    respond_to do |format|
      if @course_subject.save
        format.html { redirect_to @course_subject, notice: 'Course subject was successfully created.' }
        format.json { render json: @course_subject, status: :created, location: @course_subject }
      else
        format.html { render action: "new" }
        format.json { render json: @course_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /course_subjects/1
  # PUT /course_subjects/1.json
  def update
    @course_subject = CourseSubject.find(params[:id])

    respond_to do |format|
      if @course_subject.update_attributes(params[:course_subject])
        format.html { redirect_to @course_subject, notice: 'Course subject was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_subjects/1
  # DELETE /course_subjects/1.json
  def destroy
    @course_subject = CourseSubject.find(params[:id])
    @course_subject.destroy

    respond_to do |format|
      format.html { redirect_to course_subjects_url }
      format.json { head :ok }
    end
  end
end
