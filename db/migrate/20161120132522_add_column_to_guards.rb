class AddColumnToGuards < ActiveRecord::Migration
  def change
    add_column :guards, :address1, :string
    add_column :guards, :address2, :string
    add_column :guards, :city, :string
    add_column :guards, :state, :string
    add_column :guards, :zip_code, :string
  end
end
