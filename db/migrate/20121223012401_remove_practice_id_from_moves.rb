class RemovePracticeIdFromMoves < ActiveRecord::Migration
  def up
  	 remove_column :moves, :practice_id
  end

  def down
  	add_column :moves, :practice_id, :integer
  end
end
