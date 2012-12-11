class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :title
      t.text :start
      t.integer :lesson_id

      t.timestamps
    end
  end
end
