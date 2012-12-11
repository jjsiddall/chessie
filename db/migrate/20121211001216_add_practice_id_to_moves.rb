class AddPracticeIdToMoves < ActiveRecord::Migration
  def change
  	add_column :moves, :practice_id, :integer
  end
end
