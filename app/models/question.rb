class Question < ActiveRecord::Base
  has_many :question_inputs
  has_many :answers
end
