class Project < ActiveRecord::Base
  belongs_to :general_contractor
  has_many :subcontractors
  has_one :estimate

end
