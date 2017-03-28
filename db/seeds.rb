# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'aircraft.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  Aircraft.create(code: row['acType'], acClass: row['acClass'], acType: row['EngNumb-FAAWeightClass'], icaoWTC: row['ICAO WTC'], recatWakeCat: row['RECAT 1.5 Wake Category'],
                  srs: row['SRS'], lahso: row['LAHSO'], engines: row['NumbEngines'], engType: row['EngType'], weightClass: row['WTClass'])
end