class RenameInspectionsToInspections < ActiveRecord::Migration
  def change
  	rename_table :Inspections, :inspections
  end
end
