class Report < ActiveRecord::Base
  has_many :tags
  has_many :comments

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

end
