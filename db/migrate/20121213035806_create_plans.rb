class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :lesson_id
      t.string :unit_type
      t.integer :unit_id

      t.timestamps
    end
  end
end
