class ScoresController < ApplicationController
  def index
    render json: Score.all
  end

  def create
    render json: Score.create(score_params)
  end

  private

  def score_params
    params.require(:score).permit(:user_id, :user_score)
  end

end
