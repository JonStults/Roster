class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    @votes = Vote.all

    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end

    if @current_user.nil?
      @current_user = User.create(id: session[:user_id])
      session[:user_id] = @current_user.id
    end
  end

  def vote
    current_user = User.find_by_id(session[:user_id])
    employee = Employee.find(params[:id])
    vote = Vote.create(user: current_user, employee: employee)
    vote.save
    employee.count += 1
    employee.save
    redirect_to '/'
  end
end
