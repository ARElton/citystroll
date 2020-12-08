class PostsController < ApplicationController
    
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
        @comment = Comment.new
        @users = User.all

        if @current_user 
            render :show
        else
            flash[:city_error] = "Sign up to view a post!"
            redirect_to cities_path 
        end
    end

    def new
        @post = Post.new
        @users = User.all
        @cities = City.all
    end

    def create
        post = Post.create(strong_params)
        if post.valid?
            redirect_to user_path(post.user.id)
        else
            flash[:user_errors] = post.errors.full_messages
            redirect_to new_post_path
        end
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to user_path(@current_user)
    end

    def like
        post = Post.find(params[:id])
        post.likes +=1
        post.save

        redirect_to post_path(post)
    end

    private

    def strong_params
        params.require(:post).permit(:user_id, :city_id, :title, :link, :description)
    end

end
