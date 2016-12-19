class CommentsController < ApplicationController
  def create
    @phone = Phone.find(params[:phone_id])
    @comment = @phone.comments.create(comment_params)
    redirect_to phone_path(@phone)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
