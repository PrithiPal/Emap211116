class AddGuardDetails1ToGuards < ActiveRecord::Migration
  def change
    add_column :guards, :first_name, :string
    add_column :guards, :last_name, :string
    add_column :guards, :birthday, :date
    add_column :guards, :age, :integer
    add_column :guards, :height, :float
    add_column :guards, :about, :string
  end
end
