class RentController < ActionController::Base
	def rent
		#render :text => params['rent'].inspect
	end
	def return
		
	end
	def new
		params[:rent][:date] = DateTime.now #.to_formatted_s(:db)
		#render :text => params[:rent].inspect
		@rent = Rent.new(params[:rent])
	    if @rent.save
	    	if(params[:rent][:rent_type] == "1")
				flash[:success] = "Book now available."
			else
				flash[:success] = "Book rented."
			end
    		redirect_to :back
	    else
			flash[:error] = "Could not save request"
    		redirect_to :back
	    end
	end
end