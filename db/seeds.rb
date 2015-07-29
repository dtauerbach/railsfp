Answer.create!([
  {question_id: 1, answer_json: " Facebook ", uuid: nil},
  {question_id: 1, answer_json: " Google ", uuid: nil},
  {question_id: 2, answer_json: " Individual contributor ", uuid: nil},
  {question_id: 3, answer_json: "Ninja of funk", uuid: nil},
  {question_id: 4, answer_json: "60000", uuid: nil},
  {question_id: 1, answer_json: " Facebook ", uuid: nil},
  {question_id: 2, answer_json: " Individual contributor ", uuid: nil},
  {question_id: 3, answer_json: "Ninja", uuid: nil},
  {question_id: 4, answer_json: "5000", uuid: nil}
])
Question.create!([
  {question_title: "I work at..."},
  {question_title: "I am a..."},
  {question_title: "My title is..."},
  {question_title: "My base annual salary in USD is..."},
  {question_title: "My level is..."}
])
QuestionInput.create!([
  {question_id: 1, answer_label: "Google", answer_type: "button question-button"},
  {question_id: 1, answer_label: "Facebook", answer_type: "button question-button"},
  {question_id: 1, answer_label: "Amazon", answer_type: "button question-button"},
  {question_id: 2, answer_label: "Individual contributor", answer_type: "button question-button"},
  {question_id: 2, answer_label: "People manager", answer_type: "button question-button"},
  {question_id: 2, answer_label: "Executive / HR", answer_type: "button question-button"},
  {question_id: 1, answer_label: "None of the above", answer_type: "button question-button button-small"},
  {question_id: 3, answer_label: "e.g. Software Engineer", answer_type: "textbox"},
  {question_id: 3, answer_label: "Submit", answer_type: "button submit-button button-small"},
  {question_id: 4, answer_label: "e.g. 100000", answer_type: "textbox"},
  {question_id: 4, answer_label: "Submit", answer_type: "button submit-button button-small"},
  {question_id: 5, answer_label: "e.g. 4", answer_type: "textbox"},
  {question_id: 5, answer_label: "Submit", answer_type: "submit-button button button-small"}
])
