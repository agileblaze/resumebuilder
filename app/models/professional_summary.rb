class ProfessionalSummary < ActiveRecord::Base
  validates_presence_of     :summary
end
