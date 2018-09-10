class PostsController < ApplicationController
  def index
    # Return all `Post`
    @posts = Post.search(params[:term])
  end

  def new
    # Return view to create a new Post
    @post = Post.new
  end

  def create
    # Add a new `Post` to the database
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def destroy
    # Remove a `Post` from the database
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private
  # Add term to search through
    def post_params
        params.require(:post).permit(:title, :body, :term)
    end
end
