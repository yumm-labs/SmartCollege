class SubjectCategoriesController < ApplicationController
  # GET /subject_categories
  # GET /subject_categories.json
  def index
    @subject_categories = SubjectCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subject_categories }
    end
  end

  # GET /subject_categories/1
  # GET /subject_categories/1.json
  def show
    @subject_category = SubjectCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subject_category }
    end
  end

  # GET /subject_categories/new
  # GET /subject_categories/new.json
  def new
    @subject_category = SubjectCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subject_category }
    end
  end

  # GET /subject_categories/1/edit
  def edit
    @subject_category = SubjectCategory.find(params[:id])
  end

  # POST /subject_categories
  # POST /subject_categories.json
  def create
    @subject_category = SubjectCategory.new(params[:subject_category])

    respond_to do |format|
      if @subject_category.save
        format.html { redirect_to @subject_category, notice: 'Subject category was successfully created.' }
        format.json { render json: @subject_category, status: :created, location: @subject_category }
      else
        format.html { render action: "new" }
        format.json { render json: @subject_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subject_categories/1
  # PUT /subject_categories/1.json
  def update
    @subject_category = SubjectCategory.find(params[:id])

    respond_to do |format|
      if @subject_category.update_attributes(params[:subject_category])
        format.html { redirect_to @subject_category, notice: 'Subject category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @subject_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_categories/1
  # DELETE /subject_categories/1.json
  def destroy
    @subject_category = SubjectCategory.find(params[:id])
    @subject_category.destroy

    respond_to do |format|
      format.html { redirect_to subject_categories_url }
      format.json { head :ok }
    end
  end
end
