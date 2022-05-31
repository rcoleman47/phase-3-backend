class Bid < ActiveRecord::Base
  belongs_to :subcontractor
  belongs_to :estimate

end