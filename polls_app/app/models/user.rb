# == Schema Information
#
# Table name: users
#
#  id       :bigint(8)        not null, primary key
#  username :string           not null
#

class User < ApplicationRecord
  

  has_many :authored_polls,
  foreign_key: :author_id,
  primary_key: :id,
  class_name: "Poll"

  has_many :responses,
  foreign_key: :answerer_id,
  primary_key: :id,
  class_name: "Response"

end
