class LikesController < ApplicationController
    def index
        # Your code for the 'index' action goes here
        create
       
      end
    
  
   
  def create
    if params[:post_id].present? && params[:value].present?
      # Only post_id is present, process accordingly
      if params[:value] == "unlike"
        post = Post.find(params[:post_id])
        like = post.likes.find_by(user: current_user)
        if like 
          # The current user has already liked the post, so unlike it
          like.destroy
        end
      end
      redirect_back(fallback_location: root_path)
    elsif params[:post_id].present? && params[:value].blank?
      # Both post_id and value are present, process accordingly
      post = Post.find(params[:post_id])
      post.likes.create(user: current_user)
      redirect_back(fallback_location: root_path)
    end
  
    if params[:comment_id].present? && params[:value].present?
      # Only comment_id is present, process accordingly
      if params[:value] == "unlike"
        comment = Postcomment.find(params[:comment_id])
        like = comment.likes.find_by(user: current_user)
        if like 
          # The current user has already liked the comment, so unlike it
          like.destroy
        end
      end
      redirect_back(fallback_location: root_path)
    elsif params[:comment_id].present? && params[:value].blank?
      # Both comment_id and value are present, process accordingly
      comment = Postcomment.find(params[:comment_id])
      comment.likes.create(user: current_user)
      redirect_back(fallback_location: root_path)
    end
  end
  
    

    
      private
    
     
  
    
end
