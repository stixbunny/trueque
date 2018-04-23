class PostsController < InheritedResources::Base
  before_action :set_post, only: [:show, :edit, :update, :destroy]


  def show
    @comments = @post.comments
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:name, :description, :location, :user_id)
    end
end
