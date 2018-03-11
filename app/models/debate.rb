class Debate < ApplicationRecord
  has_many :users
  has_many :arguments
end
