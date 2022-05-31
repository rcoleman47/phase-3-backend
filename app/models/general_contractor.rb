class GeneralContractor < ActiveRecord::Base
  has_many :projects
  has_many :contracts
  has_many :subcontractors, through: :contracts
  
end
