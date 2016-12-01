class DevelopersController < ApplicationController

  def index
    @developers = Developer.all
  end

  def show
    @developer = Developer.find(params[:id])
  end

  def new
    @developer = Developer.new
  end

  def edit
    @developer = Developer.find(params[:id])
  end

  def create
    @developer = Developer.new(params[:developer])

    if @developer.save
      redirect_to @developer
    else
      render 'new'
    end
  end

  def update
    @developer = Developer.find(params[:id])

    if @developer.update(developer_params)
      redirect_to @developer
    else
      render 'edit'
    end
  end

  def destroy
    @developer = Developer.find(params[:id])
    @developer.destroy

    redirect_to developers_path
  end

  private
    def phone_params
      params.require(:phone).permit(:name, :description, :devices)
    end
end
