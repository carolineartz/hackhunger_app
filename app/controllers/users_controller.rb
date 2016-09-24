class UsersController < ApplicationController
  def show
    @programs = Program.all.order(:name)
    @user_programs = current_user.programs.order(:name)
  end

  def update
    current_user.programs << program
    current_user.save!
    redirect_to user_path(current_user)
  end

  private

  def program
    Program.find(program_id)
  end

  def program_id
    # TODO: fix this monstrosity
    params["user"]["programs"]
  end
end
