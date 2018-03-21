class ProductsController < InheritedResources::Base

  private

    def product_params
      params.require(:product).permit(:name, :description, :state, :quantity, :location, :category_product_id, :user_id)
    end
end

