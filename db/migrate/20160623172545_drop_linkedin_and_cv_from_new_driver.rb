class DropLinkedinAndCvFromNewDriver < ActiveRecord::Migration
  def change
    remove_column :driver_applications, :linkedin
    remove_column :driver_applications, :cv
  end
end
