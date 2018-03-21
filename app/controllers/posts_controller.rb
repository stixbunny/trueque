class PostsController < InheritedResources::Base

  private

    def post_params
      params.require(:post).permit(:name, :description, :location, :user_id)
    end
end

