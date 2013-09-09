# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach('db/mass_chip_data.csv', headers: true) do |row|
  towns = {}
  towns[:geography] = row[0]
  towns[:youth] = row[2].delete(',').delete('$')
  towns[:senior] = row[3].delete(',').delete('$')
  towns[:income] = row[4].delete(',').delete('$')
  towns[:births] = row[14]
  towns[:mortality] = row[10]

TownHealthRecord.where({ :geography => row[0], :youth => row[2], :senior => row[3], :low_income => row[4], :teen_birth => row[14], :infant_mortality => row[10]}).first_or_create
#normalize the data for youth
#normalize data for seniors
#normalize data per capita income
end

 #I don't think it is updating properly


