class RenameInspectionIdToInspectionId < ActiveRecord::Migration
  def change
  	rename_column :scores, :Inspection_id, :inspection_id
  end
end
