class CommentsController < ApplicationController
  def create
    @phone = Phone.find(params[:phone_id])
    @comment = @phone.comments.create(comment_params)
    redirect_to phone_path(@phone)

    @tablet = Tablet.find(params[:tablet_id])
    @comment = @tablet.comments.create(comment_params)
    redirect_to tablet_path(@tablet)

    @watch = Watch.find(params[:watch_id])
    @comment = @watch.comments.create(comment_params)
    redirect_to watch_path(@watch)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
