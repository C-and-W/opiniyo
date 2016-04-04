class Poll < ActiveRecord::Base
  has_many :choices
end
