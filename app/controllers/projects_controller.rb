class ProjectsController < ApplicationController
  def index
    @project = Project.new
    @project.tasks.build
    @tasks = Task.includes(:member, :group, :project).last(5)
    @projects = Project.includes(:member).last(5)
        # @tasks = Task.includes(:member, :project, :group).limit(5)

  end

  def create
    @group_member = Group.eager_load(:member)
    @project = Project.new(project_params)
    @project.save
    if @task = Task.update(group_id: @group_member.last[:id], member_id: @group_member.last[:member_id])
      respond_to do |format|
        format.html {redirect_to member_projects_path(member_id: @group_member.last[:member_id])}
        format.json
      end

    else
      render json:nil
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

  def set_member
    @member = Member.find(params[:member_id])
  end
end
