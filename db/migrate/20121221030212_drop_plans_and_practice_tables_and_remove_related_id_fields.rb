class DropPlansAndPracticeTablesAndRemoveRelatedIdFields < ActiveRecord::Migration
  def change
  	drop_table(:plans)
  	drop_table(:practices)

  end
end
