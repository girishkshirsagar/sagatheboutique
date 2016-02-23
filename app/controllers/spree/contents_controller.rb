module Spree
  class ContentController < Spree::BaseController
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    helper Spree::StoreHelper
    helper Spree::BaseHelper
    include Spree::Core::ControllerHelpers::Order

    def show
      p params[:id]
      render "spree/content/#{params[:id]}"
    end
  end
end
