class PostsController < ApplicationController
  before_action :authenticate_user!

    def index
        @posts = Post.all
      end
      def show 
        @post =Post.find(params[:id])
        @comments=@post.postcomments.includes(:user)
       
      end
      def new
        @post = Post.new
      end
    
      def create
        @post = current_user.post.build(post_params)
       
        if @post.save
             redirect_to home_index_path, notice: 'Post was successfully created.'
        else
          render :new
        end
      end
    
    
    
      private
    
      def post_params
        params.require(:post).permit(:title, :content, :image)
      end
end
