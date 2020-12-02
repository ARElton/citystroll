class PostsController < ApplicationController
    
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
        @comment = Comment.new
        @users = User.all
    end

    def new
        @post = Post.new
        @users = User.all
        @cities = City.all
    end

    def create
        post = Post.create(strong_params)
        if post.valid?
            redirect_to post_path(post)
        else
            flash[:user_errors] = post.errors.full_messages
            redirect_to new_post_path
        end
    end

    # def delete
    #     post = Post.find(params[:id])
    #     post.destroy
    #     redirect_to 
    # end

    private

    def strong_params
        params.require(:post).permit(:user_id, :city_id, :title, :link)
    end

end
