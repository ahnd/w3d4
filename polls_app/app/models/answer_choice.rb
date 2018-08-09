# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  answer_text :string           not null
#  question_id :integer
#

class AnswerChoice < ApplicationRecord

  has_many :responses,
  foreign_key: :answer_choice_id,
  primary_key: :id,
  class_name: "Response"

  belongs_to :question,
  foreign_key: :question_id,
  primary_key: :id,
  class_name: "Question"
  
end
