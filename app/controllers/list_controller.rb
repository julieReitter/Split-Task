class ListController < ApplicationController
  respond_to :json
  def index
    print 'YOU FOUND MEEEE'
    if user_signed_in?
      @lists = current_user.lists
      respond_with @lists
    else
      respond_with 'Error'
    end 
  end
end
