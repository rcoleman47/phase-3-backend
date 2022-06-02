class LineItem < ActiveRecord::Base
  belongs_to :estimate

  delegate :project, :to => :estimate

end