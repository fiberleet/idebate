class Debate < ApplicationRecord
  has_many :debate_users
  has_many :users, through: :debate_users
  has_many :arguments
  belongs_to :topic
end
