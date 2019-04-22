class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy, :delete_project_image, :publish]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy, :index_drafts, :delete_project_image]
  layout "form"

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.where(status: [:published])
  end

  # GET /projects_drafts
  # GET /projects_drafts.json
  def index_drafts
    @projects = Project.where(status: [:draft])
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @project.user = current_user

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1/publish
  def publish 
    @project.published!
    render "show"
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete_project_image
    @project.image.purge
    respond_to do |format|
      format.html { redirect_to @project, notice: 'Project was successfully updated.' }
      format.json { render :show, status: :ok, location: @project }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:user_id, :name, :description, :website, :start_date, :image)
    end
end
