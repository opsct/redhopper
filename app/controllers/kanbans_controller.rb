class KanbansController < ApplicationController
  unloadable

  def index
    @project = Project.find(params[:project_id])

    @kanban_board = KanbanBoard.new @project

    @feature_show_blockers = Feature.enabled("show_blockers")
  end
end
