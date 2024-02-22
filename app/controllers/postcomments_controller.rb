class PostcommentsController < ApplicationController
    def create
       @post = Post.find(params[:post_id])
       @comment = @post.postcomments.build(postcomment_params.merge(user_id: current_user.id))
       if @comment.save
    
        redirect_to home_index_path, notice: 'Comment was added sucessfully.'

        else
          redirect_to post_path, alert: 'Error adding comment.'
        end
      end
  private
    def postcomment_params
        params.require(:postcomment).permit(:content, :user_id)
      end
end
