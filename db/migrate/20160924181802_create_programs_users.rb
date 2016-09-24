class CreateProgramsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :programs_users, id: false do |t|
      t.uuid :program_id, foreign_key: true
      t.uuid :user_id, foreign_key: true
    end
  end
end
