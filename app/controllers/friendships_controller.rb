class FriendshipsController < ApplicationController
  ALLOWED_FRIENDSHIP_ACTIONS = %w(friend_request accept_request decline_request remove_friend block_friend unblock_friend)
  before_action :authenticate_user!

  def index
    @friends = current_user.friends
    @pending_invited_by = current_user.pending_friends
    @pending_invited = current_user.requested_friends
  end

  def update
    @friend = User.find(params[:id])
    
    current_user.send(friendship_action, @friend) if friendship_action
    redirect_back(fallback_location: root_path)
  end

private

  def friendship_action
    if fa = params[:friendship_action]
      return fa if ALLOWED_FRIENDSHIP_ACTIONS.include?(fa)
    end
  end

end