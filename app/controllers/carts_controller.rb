class CartsController < InheritedResources::Base
	def destroy
		@cart = Cart.find(params[:id])
		@cart.destroy if @cart.id == session[:cart_id]
		session[:cart_id] = nil
		respond_to do |format|
			format.html { redirect_to root_url, notice: "Cart is clear!" }
			format.json { head :no_content }
		end
	end
	private

	def cart_params
		params.require(:cart).permit()
	end
end

