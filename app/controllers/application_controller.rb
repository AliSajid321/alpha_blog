class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?
    
    def current_user                                                            # To avoid querying the database everytime we use
        @current_user ||= User.find(session[:user_id]) if session[:user_id]     # @current_user to simply return the current user
                                                                                # if we have already queried the database before.    
    end 

    def logged_in?
        !!current_user
    end

    def require_user
        if !logged_in?
            flash[:alert] = "You must be logged in to perform that action"
            redirect_to login_path
        end
    end

end
