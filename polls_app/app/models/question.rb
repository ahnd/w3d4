class Question < ApplicationRecord
  belongs_to :poll,
  foreign_key: :poll_id,
  primary_key: :id,
  class_name: "Poll"

  has_many :answer_choices,
  foreign_key: :question_id,
  primary_key: :id,
  class_name: "AnswerChoice"

  has_many :answer_responses,
    through: :answer_choices,
    source: :responses

  def results
    answers = self.answer_responses
    count = Hash.new(0)
    answers.each do |answer|
      count[answer.] += 1
    end
    count
  end
end
