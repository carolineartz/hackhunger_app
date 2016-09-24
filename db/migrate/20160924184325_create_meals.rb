class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals, id: :uuid do |t|
      t.string :description
      t.integer :head_count
      t.datetime :start_time
      t.datetime :end_time
      t.uuid :program_id, foreign_key: true

      t.timestamps
    end
  end
end
