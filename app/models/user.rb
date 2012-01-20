require 'digest/sha1'
class User < ActiveRecord::Base
  # Virtual attribute for the unencrypted password
  has_many :user_languges
  has_many :languges,:through => :user_languges
  attr_accessor :password

  validates_presence_of     :login, :email
  #validates_presence_of     :pin,:fname,:phone_no,:adressline1,:message=>"must be filled", :if => "!id.nil?"
  validates_presence_of     :fname,:message=>"must be filled", :if => "!id.nil?"
  validates_format_of       :email, :with => %r{^(?:[_a-z0-9-]+)(\.[_a-z0-9-]+)*@([a-z0-9-]+)(\.[a-zA-Z0-9\-\.]+)*(\.[a-z]{2,4})$}i
    #validates_format_of :pin, :message => "must be a valid telephone number.", :with => /^[\(\)0-9\- \+\.]{10,20}$/
  #validates_length_of   :fname ,:is=>3
   #validates_presence_of  :pin,:if=>:pin_count?
  # validates_length_of :phone_no.to_s, :is => 10, :message => 'must be 10 digits, excluding special characters such as spaces and dashes. No extension or country code allowed.'
  #validates_as_phone      :phone_no
  #validates_uniqueness_of   :phone_no,:if => "!id.nil?"
  #validates_numericality_of :pin,:phone_no,:if => "!id.nil?"
  #validates_length_of       :pin,:is=> 6,:if => "!id.nil?"
  #validates_length_of       :phone_no,:is=> 1,:if => "!id.nil?"
  validates_presence_of     :password,                   :if => :password_required?
  validates_presence_of     :password_confirmation,      :if => :password_required?
  validates_length_of       :password, :within => 6..40, :if => :password_required?
  validates_confirmation_of :password,                   :if => :password_required?
  validates_length_of       :login,    :within => 3..40
  validates_length_of       :email,    :within => 3..100
  validates_uniqueness_of   :login, :email, :case_sensitive => false
  before_save :encrypt_password
  #validate :pin_count,      :if => "!id.nil?"
  #before_update :encrypt_password_u
  # Authenticates a user by their login name and unencrypted password.  Returns the user or nil.
  def self.authenticate(login, password)
    u = find_by_login(login) # need to get the salt
    u && u.authenticated?(password) ? u : nil
  end

  # Encrypts some data with the salt.
  def self.encrypt(password, salt)
    Digest::SHA1.hexdigest("--#{salt}--#{password}--")
  end

  # Encrypts the password with the user salt
  def encrypt(password)
    self.class.encrypt(password, salt)
  end

  def authenticated?(password)
    crypted_password == encrypt(password)
  end

  def remember_token?
    remember_token_expires_at && Time.now.utc < remember_token_expires_at 
  end

  # These create and unset the fields required for remembering users between browser closes
  def remember_me
    self.remember_token_expires_at = 2.weeks.from_now.utc
    self.remember_token            = encrypt("#{email}--#{remember_token_expires_at}")
    save(false)
  end

  def forget_me
    self.remember_token_expires_at = nil
    self.remember_token            = nil
    save(false)
  end
  protected
    # before filter 
    def encrypt_password
      return if password.blank?
      self.salt = Digest::SHA1.hexdigest("--#{Time.now.to_s}--#{login}--") if new_record?
      self.crypted_password = encrypt(password)
    end
    def encrypt_password_u

      #return if password.blank?
      self.salt = Digest::SHA1.hexdigest("--#{Time.now.to_s}--#{login}--")
      self.crypted_password = encrypt(password)
    end
    def password_required?
      crypted_password.blank? || !password.blank?
    end

    def pin_count
      if self.pin.to_s.length  >6
        errors.add(:Pin, " is not a valid size ")
       # errors[:base] << "This person is invalid because ..."
        # errors[:name] = "cannot contain the characters !@#%*()_-+="
        return false
      else if self.pin.to_s.length< 6
         errors.add(:Pin, "is not a valid size ")
         return false
        end
      end

       if self.phone_no.to_s.length  >10
        errors.add(:Phoneno, " is not a valid size ")
       # errors[:base] << "This person is invalid because ..."
        # errors[:name] = "cannot contain the characters !@#%*()_-+="
        return false
      else if self.phone_no.to_s.length< 10
         errors.add(:Phoneno, "is not a valid size ")
         return false
      else
        # errors.add(:name, "Pin is not a valid size ")
        return true
        end
      end


    end
end
