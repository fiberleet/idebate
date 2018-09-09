class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include Amistad::FriendModel
  has_many :debate_users, inverse_of: :user
  has_many :debates, through: :debate_users
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
