class LibraryController < ActionController::Base
	layout "application"
	def index
		#render :text => session[:user].inspect
		if(session[:user] == nil)
			flash[:error] = "You have to login to access this page."
			redirect_to :controller => "login", :action => "index"
		end
		
		@books = Book.all
		@users = User.all
	end
end