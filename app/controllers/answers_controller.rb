class AnswersController < ApplicationController
  def create
    @answer = Answer.create(answer_params.merge({"uuid"=>current_uuid}))
    session[:answered_questions] = {} if !session[:answered_questions]
    # TODO this "to_i" doesn't seem to be working? See "next_question" of questions_controller
    session[:answered_questions][answer_params[:question_id].to_i] = answer_params
    redirect_to questions_path
  end

  private

  def answer_params
    params.permit(:answer_json, :question_id)
  end
end
