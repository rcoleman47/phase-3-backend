class Subcontractor < ActiveRecord::Base
  has_many :contracts
  has_many :general_contractors, through: :contracts
  has_many :projects, through: :contracts
  has_many :bids

end
