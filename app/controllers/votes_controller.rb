class VotesController < ApplicationController
  def create
    category_id = params[:id] # take the id from current url CHECK THIS
    @vote = current_user.votes.new(article_id: params[article_id])
    if @vote.save
      redirect_to category_path(category_id), notice: 'You voted for an article.'
    else
      redirect_to category_path(category_id), alert: 'There was a problem, please try again.'
    end
  end

  def destroy
    vote = Vote.find_by(user: current_user, article_id: params[:article_id])
    if vote
      vote.destroy
      redirect_to posts_path, notice: 'You unvoted an article.'
    else
      redirect_to posts_path, alert: 'There was a problem, please try again.'
    end
  end
end
