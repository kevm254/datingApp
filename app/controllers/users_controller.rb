class UsersController < ApplicationController
  before_filter :check_user_created, only: [:index]

  private
  def check_member_created
    if current_user.member==nil
      puts 'no user created'
      redirect_to new_member_path
    end
  end
end