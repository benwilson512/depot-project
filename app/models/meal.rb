class Meal < ActiveRecord::Base
  attr_accessible :name, :notes, :nutritional_info, :cafeterium_id, :cafeterium
  belongs_to :cafeterium
end
