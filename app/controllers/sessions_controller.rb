class SessionsController < ApplicationController

  def create
    employee = Employee.find_by_username(params[:username])
    if employee && employee.authenticate(params[:password])
      session[:employee_id] = employee.id
      redirect_to menu_items_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session[:employee_id] = nil
    redirect_to log_in_path
  end

end
