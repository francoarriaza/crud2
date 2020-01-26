class EmployeesController < ApplicationController

def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirected_to company_path

end
    
end




private
def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email)
end
