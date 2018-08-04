class Subject < ActiveRecord::Base
  has_many :books :names
end
