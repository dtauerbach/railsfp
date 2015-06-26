class QuestionInputsController < ApplicationController
  before_action :set_question_input, only: [:show, :edit, :update, :destroy]
  
  def index
    @question_inputs = QuestionInput.all        
  end

  def edit
  end

  def new
    @question_input = QuestionInput.new
  end

  def create
    @question_input = QuestionInput.new(question_input_params)
    @question_input.save
    redirect_to question_path(question_input_params[:question_id])
  end

  def update
    respond_to do |format|
      if @question_input.update(question_input_params)
        format.html { redirect_to @question_input, notice: 'Question input was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_input }
      else
        format.html { render :edit }
        format.json { render json: @question_input.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy
    @question_input.destroy
    respond_to do |format|
      format.html { redirect_to question_inputs_url, notice: 'Question input successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_question_input
    @question_input = QuestionInput.find(params[:id])
  end

  def question_input_params
    params.require(:question_input).permit(:answer_label, :answer_type, :question_id)
  end

end
