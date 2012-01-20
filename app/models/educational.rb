class Educational < ActiveRecord::Base
  belongs_to                :pg
  belongs_to                :graduation
  belongs_to                :discipline
  belongs_to                :university
  belongs_to                :degree_name
  belongs_to                :qualification_name
  validates_presence_of     :qualification_name_id
  validates_presence_of     :institute
  validates_numericality_of :percentage
  # validates_numericality_of :board,:if=>:check?
   before_save :valid_qua,:valid_uni
   before_update :valid_qua,:per_len
def valid_qua
  if qualification_name_id > 1
    return true
  else
     errors.add(:qualification_name_id , "is not selected ")
    return false
   
  end
end
def valid_uni
   if university_id >1
      return true
    else
      errors.add(:university_id , "is not selected")
      return false
    end
end
def per_len
  if percentage.to_s.length  >2
      errors.add(:percentage, " is not a valid size ")
      return false
  else if percentage.to_s.length  < 2
      errors.add(:percentage, " is not a valid size ")
      return false
  else
     return true
  end
  end
end
end