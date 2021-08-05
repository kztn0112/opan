class LikesController < ApplicationController
  def create
    @answer = Answer.find(params[:answer_id])
    @question = Question.find(params[:question_id])
    @like = current_user.likes.new(answer_id: @answer.id)
    @like.save
    # redirect_to question_path(@question)
  end

  def destroy
    @answer = Answer.find(params[:answer_id])
    @question = Question.find(params[:question_id])
    @like = current_user.likes.find_by(answer_id: @answer.id)
    @like.destroy
    # redirect_to question_path(@question)
  end
end
