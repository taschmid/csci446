# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#f = File.open("books.txt", "r")
f = File.open(File.join(Rails.root, 'db', 'books.txt'))
f.each_line do |line|
  #get rid of newlines
  line = line.strip!
  arr = line.split(',')
  # we use strip! for author and language to remove the space after the comma
  Book.create(title: arr[0], author: arr[1].strip!, language: arr[2].strip!, year: arr[3], copies: arr[4])  
end
f.close