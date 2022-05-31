class Project < ActiveRecord::Base
  belongs_to :general_contractor
  has_many :contracts
  has_many :subcontractors, through: :contracts
  has_one :estimate

end
