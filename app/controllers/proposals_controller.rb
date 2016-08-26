class ProposalsController < ApplicationController
  def index
    @proposals = Proposal.all
  end
  def show
    @proposal = Proposal.find(params[:id])
  end

  def new
    @proposal = Proposal.new
  end

  def edit
    @proposal = Proposal.find(params[:id])
  end

  def create
    @proposal = Proposal.new(proposal_params)

    if @proposal.save
      redirect_to @proposal
    else
      render 'new'
    end
  end

  def update
    p "*" * 200
    @proposal = Proposal.find(params[:id])

    if @proposal.update(proposal_params)
      redirect_to @proposal
    else
      render 'edit'
    end
  end

  def upvote
    @proposal = Proposal.find(params[:id])
    if 
      @proposal.votes.create(user_id: current_user.id)
      redirect_to(proposal_path)
    else
      flash[:notice] = "You can only vote once!"
    end
  end

private
  def proposal_params
    params.require(:proposal).permit(:title, :abstract, :intro, :hypothesis, :exp_method, :date_start, :date_end, :status)
  end
end
