class UsersController < ApplicationController
  def show
    @user = User.find_by!(username: params.fetch(:username))
  end

  def liked
    @user = User.find_by!(username: params.fetch(:username))
  end

  def feed
    @user = User.find_by!(username: params.fetch(:username))
    @feed = Photo.where(owner_id: @user.leaders.pluck(:id)).order(created_at: :desc)
  end
end
