class LikesController < ApplicationController
def new
    if params[:post_id].present? && params[:value].present?
      if params[:value] == "unlike"
         post = Post.find(params[:post_id])
         like = post.likes.find_by(user: current_user)
         if like 
            like.destroy
         end
      end
      redirect_back(fallback_location: root_path, notice: 'post unliked sucessfully.')
    elsif params[:post_id].present? && params[:value].blank?
      post = Post.find(params[:post_id])
      post.likes.create(user: current_user)
      redirect_back(fallback_location: root_path, notice: 'post liked sucessfully.')
    end
    if params[:comment_id].present? && params[:value].present?
      if params[:value] == "unlike"
        comment = Postcomment.find(params[:comment_id])
        like = comment.likes.find_by(user: current_user)
        if like 
           like.destroy
        end
      end
      redirect_back(fallback_location: root_path, notice: 'Comment unliked successfully.')
    elsif params[:comment_id].present? && params[:value].blank?
      comment = Postcomment.find(params[:comment_id])
      comment.likes.create(user: current_user)
     redirect_back(fallback_location: root_path ,notice: 'Comment liked successfully.')
    end
  end
end
