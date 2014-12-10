class TimeEntriesController < ApplicationController
	def create
		e = Employee.find(params[:employee_id])
		@time_entry = e.time_entries.new(params.require(:time_entry).permit(:time, :account_id))
		if @time_entry.save
			flash[:success] = %Q|Added time entry|
			redirect_to employee_path(e)
		else
			flash[:error] = %Q|There was a problem adding time entry|
			render action: :new
		end
	end
end
