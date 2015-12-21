class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def create
    Employee.create(employee_params)
    redirect_to log_in_path

  end

  def log_in
  end
  def log_out
  end
  private

  def employee_params
    params.require(:employee).permit(:username, :password)
  end


end
