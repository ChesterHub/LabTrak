class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.create(comment_params)
    proposal = Proposal.find(params[:proposal_id])
    proposal.comments << comment
    current_user.comments << comment
    redirect_to proposal_path(proposal)
  end

private

  def comment_params
    params.require(:comment).permit(:comment, :body)
  end
end
