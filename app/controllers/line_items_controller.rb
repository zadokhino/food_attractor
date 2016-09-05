class LineItemsController < InheritedResources::Base
	include CurrentCart
	before_action :set_cart, only: [:create]
	before_action :set_line_item, only: [:show, :edit, :update, :destroy]

	def create 
		food = Food.find(params[:food_id])
		@line_item = @cart.add_food(food.id)

		respond_to do |format|

			if @line_item.save
				format.html { redirect_to @line_item.food.restaurant, notice: 'Was created,' }
				format.json { render action: 'show', status: :created, location: @line_item }
			else
				format.html { render action: 'new' }
				forma.json { render json: @line_item.errors, status: :unprocessable_entity }
			end
		end
	end

	private

	def line_item_params
		params.require(:line_item).permit(:food_id, :cart_id)
	end
end

