class Petition < ActiveRecord::Base
  has_many :signatures
end
