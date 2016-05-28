class NewDriverController < ApplicationController
  def new
    @new_driver = DriverApplication.new
  end

  def create
    @new_driver = DriverApplication.new(new_driver_params)

    respond_to do |format|
      if @new_driver.save
        format.html { redirect_to '/', notice: 'Application was successfully submitted.' }
      else
        format.html { render :new }
      end
    end
  end

  private
  def new_driver_params
    params.require(:driver_application).permit(:name, :phone_number, :email, :linkedin, :cv)
  end
end
