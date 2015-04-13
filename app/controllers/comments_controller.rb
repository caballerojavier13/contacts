class CommentsController < ApplicationController

  def index
    if params[:user_id]
      user = User.find(params[:user_id])
      @comments = user.comments
    elsif params[:contact_id]
      contact = Contact.find(params[:contact_id])
      @comments = contact.received_comments
    end

    render json: @comments
  end

  def create
    @commentable = find_commentable
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :commentable_id, :commentable_type)
  end
end
