class ApplicationController < ActionController::API
#   before_action :current_user
#   helper_method :current_user, :logged_in?

#   def current_user #get current logged-in user's instance
#       @user = (User.find_by(id: session[:user_id]) || User.new)
#   end

#   def logged_in?
#       !!current_user.id 
#   end

#   def authorized?
#       if !logged_in?
#           flash[:errors] = ["You are not logged in"]
#           redirect_to login_path and return
#       end
#   end

#   def authorized_for(target_user_id)
#       if current_user.id != target_user_id.to_i && current_user.admin != true 
#           flash[:errors] = ["You do not have access to this page"]
#           redirect_to tasks_path
#       end
#   end

end
