class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :piece
      t.string :starting_coordinate
      t.string :ending_coordinate
      t.text :explaination

      t.timestamps
    end
  end
end
