class Publication < ActiveRecord::Base
  attr_accessible :title
  belongs_to :author
  
  validates :author, presence: true
end
