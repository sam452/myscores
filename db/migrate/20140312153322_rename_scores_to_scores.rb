class RenameScoresToScores < ActiveRecord::Migration
  def change
  	rename_table :Scores, :scores
  end
end
