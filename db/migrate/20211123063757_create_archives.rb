class CreateArchives < ActiveRecord::Migration[6.1]
  def change
    create_table :archives do |t|
      t.references :tasks, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      t.string :task_title, null: false
      t.string :task_detail
      t.datetime :task_start_at, null: false
      t.datetime :task_complete_at
      t.timestamps
      t.datetime :deleted_at
    end
  end
end
