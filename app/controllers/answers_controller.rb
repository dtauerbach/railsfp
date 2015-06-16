class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    if !session[:current_question]
      session[:current_question] = 2
    else
      session[:current_question] += 1 
    end
    redirect_to questions_path
  end

  private

  def answer_params
    params.require(:answer).permit(:answer_json)
  end
end
