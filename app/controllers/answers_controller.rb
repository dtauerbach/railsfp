class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    redirect_to questions_path
  end

  private

  def answer_params
    params.require(:answer).permit(:answer_json)
  end
end
