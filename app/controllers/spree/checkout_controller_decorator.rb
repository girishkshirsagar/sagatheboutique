module Spree
  CheckoutController.class_eval do
    def update
      if @order.update_attributes(object_params)
        unless @order.next
          flash[:error] = @order.errors.full_messages.join("\n")
          redirect_to checkout_state_path(@order.state) and return
        end

        if @order.completed?
          session[:order_id] = nil
          flash.notice = Spree.t(:order_processed_successfully)
          flash[:commerce_tracking] = "nothing special"
          redirect_to completion_route
        else
          redirect_to checkout_state_path(@order.state)
        end
      else
        render :edit
      end

      adj = @order.adjustments.where(:originator_type => 'Spree::ShippingMethod').first
      adj.calculate_shipping(@order)
    end
  end
end
