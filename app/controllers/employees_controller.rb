class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def create
		@employee = Employee.new(params.require(:employee).permit(:name))
		if @employee.save
			flash[:success] = %Q|Added employee|
			redirect_to employees_path
		else
			flash[:error] = %Q|There was a problem adding employee|
			redirect_to employees_path
		end
	end
end
	