class Employee < ActiveRecord::Base
  validates :name, uniqueness: true

  result = Net::HTTP.get(URI.parse('https://api.myjson.com/bins/jhz5z'))

  json = JSON.parse(result)

  json.each do |data|
    Employee.create(
    name: data['name'],
    image: data['image_url'],
    title: data['title'],
    bio: data['bio'],
    count: 0
    )
  end
  has_many :votes
  has_many :users, :through => :votes
end
