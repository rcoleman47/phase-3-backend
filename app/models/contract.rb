class Contract < ActiveRecord::Base
  belongs_to :general_contractor
  belongs_to :project
  belongs_to :subcontractor

end