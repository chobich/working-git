module ProjectHelper
  def member_project_maker(selectlist)
    @member_project = Project.where(member_id: current_member.id).pluck(:name).uniq
    @member_project.unshift("選択してください" ,"新しく登録する")
  end

  def task_priorityA
    Task.includes(:member, :group, :project).where(member_id: current_member.id, priority_type: "A")
  end

  def task_priorityB
    Task.includes(:member, :group, :project).where(member_id: current_member.id, priority_type: "B")
  end

  def task_priorityC
    Task.includes(:member, :group, :project).where(member_id: current_member.id, priority_type: "C")
  end

  def task_priorityD
    Task.includes(:member, :group, :project).where(member_id: current_member.id, priority_type: "D")
  end

end
