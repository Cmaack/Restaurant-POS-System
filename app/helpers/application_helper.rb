module ApplicationHelper
  #current_employee is either current_employee, otherwise: go find session by employee id
def current_employee
  if session[:employee_id]
    @current_employee = @current_employee || Employee.find(session[:employee_id])
  end
end

def authenticate!
  redirect_to log_in_path unless current_employee
end
def log_out
session.delete(:user_id)
   @current_user = nil
 end
end
