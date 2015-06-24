class QuestionInputsController < ApplicationController
  def edit
  end

  def create
    @question_input = QuestionInput.new(question_input_params)
    @question_input.save
    redirect_to question_path(question_input_params[:question_id])
  end

  private

  def question_input_params
    params.require(:question_input).permit(:answer_label, :answer_type, :question_id)
  end

end
