# To change this template, choose Tools | Templates
# and open the template in the editor.

class User1 < ActiveRecord::Base
  # Virtual attribute for the unencrypted password
  #attr_accessor :password

  validates_presence_of      :pin
  #validates_presence_of     :pin

  #validates_presence_of     :password,                   :if => :password_required?
  #validates_presence_of     :password_confirmation,      :if => :password_required?
  #validates_length_of       :password, :within => 6..40, :if => :password_required?
  #validates_confirmation_of :password,                   :if => :password_required?
  #validates_length_of       :login,    :within => 3..40
  #validates_length_of       :email,    :within => 3..100
  #validates_uniqueness_of   :login, :email, :case_sensitive => false
  #before_save :encrypt_password
end
