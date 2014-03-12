class AddInspectionIdToScore < ActiveRecord::Migration
  def change
    add_column :Scores, :Inspection_id, :integer
  end
end
