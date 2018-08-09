# == Schema Information
#
# Table name: polls
#
#  id        :bigint(8)        not null, primary key
#  author_id :integer
#  title     :string           not null
#

class Poll < ApplicationRecord
  belongs_to :author,
  foreign_key: :author_id,
  primary_key: :id,
  class_name: "User"

  has_many :questions,
  foreign_key: :poll_id,
  primary_key: :id,
  class_name: "Question"
end
