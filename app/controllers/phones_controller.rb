class PhonesController < ApplicationController
  def new
  end

  def create
    render plain: params[:phone].inspect
  end
end
