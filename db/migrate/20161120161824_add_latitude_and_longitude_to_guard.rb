class AddLatitudeAndLongitudeToGuard < ActiveRecord::Migration
  def change
    add_column :guards, :latitude, :float
    add_column :guards, :longitude, :float
  end
end
