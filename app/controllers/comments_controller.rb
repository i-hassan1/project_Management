class CommentsController < ApplicationController
  respond_to :html, :json
  before_action :set_project

  def create
    @comment = @project.comments.build(comment_params)
    @comment.user = current_user
    @comment.save
  end

  private 
  def comment_params
    params.require(:comment).permit(:body, :project_id)
  end
  def set_project
    @project = Project.find(params[:project_id])
  end
end
