# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_resumebuilder_session',
  :secret      => '3671ce289ed3af354a0feec7d2b4cae1336afd300fdde837c39d9cc8469e0b0dad230d188a902b9f253b0439dc7dc2df2695ba7c93163e42ee6eb1a5f4fa86dc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
