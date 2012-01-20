class UserResume < ActiveRecord::Base
  has_attachment   :content_type => 'application/pdf',
                   :storage => :file_system,
                   :max_size => 1.megabyte,
                   :processor => :none,
                   :path_prefix => 'public/resumes1'
  #has_attachment :content_type => ['application/pdf', 'application/msword', 'text/plain']

end
