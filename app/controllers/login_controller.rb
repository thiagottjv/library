class LoginController < ActionController::Base
	layout "application"
	def index

	end
	def create
		#render :text => params.inspect
		email = params[:user][:email]
		pssw = params[:user][:password]

		user = User.find_by_email(email)
		if(user == nil)
			flash[:error] = "User doesn't exist"
			session[:user] = nil
			redirect_to :action => "index"
		elsif(user[:admin] == 0)
			flash[:error] = "User is not an admin"
			session[:user] = nil
			redirect_to :action => "index"
		elsif(user[:password] != Digest::SHA1.hexdigest(pssw))
			flash[:error] = "Combination of email/password not match or user doesn't exist"
			session[:user] = nil
			redirect_to :action => "index"
		else
			session[:user] = user
			flash[:success] = "Welcome #{user[:name]}"
			redirect_to root_url
		end
	end
	def destroy
		session[:user] = nil
		flash[:success] = "You logoff"
		redirect_to :action => "index"
	end
end