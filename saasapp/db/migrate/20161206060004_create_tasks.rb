class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :task_type
      t.string :status
      t.boolean :autocompleteable
      t.timestamp :deadline
      t.timestamp :reminding_at
      t.timestamp :finished_at
    end
  end
end
