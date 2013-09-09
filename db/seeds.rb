# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach('mass_chip_data', headers: true) do |row|
  towns = {}
  towns[:youth] = row[2]
  towns[:senior] = row[3]
  towns[:income] = row[4]
  towns[:births] = row[14]
  towns[:mortality] = row[10]
end
