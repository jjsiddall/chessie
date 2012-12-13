class AddComputerToMoves < ActiveRecord::Migration
  def change
  	add_column :moves, :computer, :boolean
  end
end
