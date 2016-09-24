class CreateProgram < ActiveRecord::Migration[5.0]
  def change
    create_table :programs, id: :uuid do |t|
      t.string :name, null: false
      t.string :address
      t.string :city
      t.string :zip
      t.string :program_number, null: false
      t.string :agency_number
      t.string :community_area
      t.string :program_type
      t.string :service_areas
      t.timestamps
    end
  end
end
