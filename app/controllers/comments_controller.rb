class CommentsController < InheritedResources::Base
  private

    def comment_params
      params.require(:comment).permit(:content, comment_item_attributes: [:product_id, :service_id, :name])
    end
end
