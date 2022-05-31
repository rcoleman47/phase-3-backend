class Estimate < ActiveRecord::Base
  belongs_to :project
  has_many :line_items

end