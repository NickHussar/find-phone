class DevelopersController < ApplicationController

  def show
    @developer = Developer.find(params[:id])
  end

  def new
  end

  def create
    @developer = Developer.new(params[:developer])

    @developer.save
    redirect_to @developer
  end

  private
    def phone_params
      params.require(:phone).permit(:name, :description, :devices)
    end
end
