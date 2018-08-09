# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  answer_choice_id :integer
#  answerer_id      :integer
#

class Response < ApplicationRecord
  validate :respondent_already_answered?
  validate :author_cant_respond
  # '-->' ?

  belongs_to :respondent,
  foreign_key: :answerer_id,
  primary_key: :id,
  class_name: "User"

  belongs_to :answer,
  foreign_key: :answer_choice_id,
  primary_key: :id,
  class_name: "AnswerChoice"

  has_one :parent_question,
    through: :answer,
    source: :question

  def sibling_responses
    parent_question.answer_responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    return true if sibling_responses.where(answerer_id: self.answerer_id).length > 0
    false
  end

  def author_cant_respond
    self.answer.question.poll.author.id != self.respondent.id
  end


end
