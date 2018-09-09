class DebateUser < ApplicationRecord
	belongs_to :debate, inverse_of: :debate_users
	belongs_to :user, inverse_of: :debate_users
end
