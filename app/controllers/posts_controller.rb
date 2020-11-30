class PostsController < ApplicationController
    before_action: 

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
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

    def delete
    end

    private

    def strong_params
        params.require(:post).permit(:user_id, :city_id, :title, :link)
    end

end
