class CreateScores < ActiveRecord::Migration
  def change
    create_table :Scores do |t|
      t.string :name
      t.integer :age
      t.string :type

      t.timestamps
    end
  end
end
