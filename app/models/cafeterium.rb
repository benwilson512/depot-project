class Cafeterium < ActiveRecord::Base
  attr_accessible :close_time, :location, :name, :open_time
  has_many :meals
end
