class MembersController < ApplicationController

  before_action :move_to_index, except: :index

  def index
  end

  def new
  end

  private
  def move_to_index
    redirect_to action: :index unless member_signed_in?
  end
end
