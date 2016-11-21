class AddColumnToSupervisors < ActiveRecord::Migration
  def change
    add_column :supervisors, :address1, :string
    add_column :supervisors, :address2, :string
    add_column :supervisors, :city, :string
    add_column :supervisors, :state, :string
    add_column :supervisors, :zip_code, :string
  end
end
