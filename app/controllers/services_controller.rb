class ServicesController < InheritedResources::Base

  private

    def service_params
      params.require(:service).permit(:name, :description, :location, :category_service_id, :user_id)
    end
end

