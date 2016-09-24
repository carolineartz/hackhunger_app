require 'csv'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



def get_data(filename)
  File.expand_path(File.join(__dir__, "data/#{filename}"))
end

CSV.table(get_data('GCFD_Programs_Hackathon.csv')).each do |csv|
  Program.create!(csv.to_hash)
end
