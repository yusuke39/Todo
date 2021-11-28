class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true, null: false
      t.string :title, null: false
      t.string :detail
      t.datetime :start_at, null: false
      t.datetime :complete_at
      t.timestamps
      t.datetime :deleted_at
    end
  end
end
