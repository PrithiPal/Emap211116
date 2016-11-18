class AddSupervisorIdToGuards < ActiveRecord::Migration
  def change
    add_column :guards, :supervisor_id, :integer
  end
end
