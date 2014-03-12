class CreateInspections < ActiveRecord::Migration
  def change
    create_table :Inspections do |t|
      t.string :name

      t.timestamps
    end
  end
end
