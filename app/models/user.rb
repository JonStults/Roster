class User < ActiveRecord::Base
  has_many :employees, :through => :votes
end
