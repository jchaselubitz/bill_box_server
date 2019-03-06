# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Workspace.destroy_all
User.destroy_all
Document.destroy_all
Tag.destroy_all

workspaces = Workspace.create([
  { name: 'Flatiron'},
  { name: '63 Ritchings'},
  { name: 'Providence'},
  { name: 'Home'}
])


documents = Document.create([
  { name: 'medical bill', doctext: 'blahblahblah', workspace: Workspace.first, paid: true, deadline: "2019-03-04 14:26:37" }, 
  { name: 'insurance bill', doctext: 'Just another bill', workspace: Workspace.first, paid: false, deadline: "2019-08-04 14:26:37" },
  { name: 'insurance bill', doctext: 'Just another bill', workspace: Workspace.second, paid: false, deadline: "2019-08-04 14:26:37" },
  { name: 'insurance bill', doctext: 'Just another bill', workspace: Workspace.third, paid: false, deadline: "2019-08-04 14:26:37" }
])

users = User.create([
  { name: 'Jake', password: "123", email: "jake@test.com", username: "jchaselubitz" }, 
  { name: 'Shane', password: "321", email: "shane@test.com", username: "studioshane" },
  { name: 'Song', password: "321", email: "song@test.com", username: "HotPotSong" },
  { name: 'Minha', password: "321", email: "minha@test.com", username: "KooKoo" }
])

tags = Tag.create([
  {name: "bills"},
  {name: "receipts"}
])