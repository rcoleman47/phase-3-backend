class GeneralContractor < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :projects
  has_many :subcontractors, through: :projects

end
