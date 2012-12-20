class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :note
      t.integer :order
      t.date :date
      t.string :status
      t.integer :list_id
      t.timestamps
    end
  end
end
