class PostsController < ApplicationController
before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order("created_at desc").paginate(page: params[:page], per_page:2)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params

    if @post.save
      redirect_to @post, notice: "Hell yeah, AD! Your article was saved!"
    else
      render 'new', notice: "Oh no, you failed to save your post!"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update post_params
      redirect_to @post, notice: "Hurrah! Your article was saved!"
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
  def find_post
    @post = Post.find(params[:id])
  end
end
