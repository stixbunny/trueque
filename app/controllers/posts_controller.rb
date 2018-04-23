class PostsController < InheritedResources::Base

  def show
    @comments = @post.comments
  end

  private

    def post_params
      params.require(:post).permit(:name, :description, :location, :user_id)
    end
end
