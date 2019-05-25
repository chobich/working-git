class ProjectsController < ApplicationController

  before_action :set_group_member, only: [:index, :create]

  def index
    @project = Project.new
    @project.tasks.build
    @project_viewlist = Project.where(member_id: current_member.id).pluck(:name).uniq
  end

  def create
    @project = Project.new(project_params)
    @project.save
    Task.last.update(group_id: @group_member[:id], member_id: current_member.id)
    if Task.last.update(group_id: @group_member[:id], member_id: current_member.id)
      respond_to do |format|
        format.html {redirect_to member_projects_path(member_id: current_member.id)}
        format.json
      end
    end
  end

  def new
  end

  def update
  end

  def delete
  end

  private

  def project_params
    params.require(:project).permit(:name, tasks_attributes: [:content, :priority_type]).merge(member_id: current_member.id)
  end

  def set_group_member
    @group_member = Group.find_by(member_id: current_member.id)
  end


  end
