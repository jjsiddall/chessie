class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.text :description
      t.text :moves
      t.text :start

      t.timestamps
    end
  end
end
