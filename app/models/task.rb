class Task < ActiveRecord::Base
  attr_accessible :title, :note, :order, :date
  
  belongs_to :lists
end
