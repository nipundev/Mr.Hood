# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

User.create(id: 1, first_name: "Robin", last_name: "Hood", email: "rhood@mrhood.com", password: "Hunter12" )


symbols = File.join(Rails.root, 'db', 'iex_stocks', 'IEX_Stocks.csv')


CSV.foreach(symbols) do |row|
    Stock.create!({symbol: row[0]})
end
