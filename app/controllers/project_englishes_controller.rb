class ProjectEnglishesController < ApplicationController
  def new
    @project_english = ProjectEnglish.new
  end

  def index
    @project_englishes = Project.all
  end

  def create
    @project_english = ProjectEnglish.new(project_params)
    if @project_english.save
      redirect_to @project_english, notice: 'Project was successfully created.'
    else
      render :new
    end
  end

  def show
    @project_english = ProjectEnglish.find(params[:id])
  end

  def update
    @project_english = ProjectEnglish.find(params[:id])
    if @project_english.update(project_params)
      redirect_to @project_english, notice: 'Project was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @project_english = ProjectEnglish.find(params[:id])
    @project_english.destroy
    redirect_to project_englishes_url, notice: 'Project was successfully destroyed.'
  end

  private

  def project_params
    params.require(:project_english).permit(:title, :description, :link, :photo)
  end
end
