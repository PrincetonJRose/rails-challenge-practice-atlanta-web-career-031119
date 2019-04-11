class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to company_path(@employee.company_id)
        else
            render :new
        end
    end

    def destroy
        Employee.destroy(params[:id])
        redirect_to company_path(@employee.company_id)
    end

    private

    def employee_params
        params.require(:employee).permit(:name, :title, :company_id)
    end

end
