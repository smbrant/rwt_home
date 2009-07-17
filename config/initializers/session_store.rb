# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rwt2_home_rails232_session',
  :secret      => '9d0ce8e99f5024b943467906bb36126ec43549f04f6c3da1d67dbb8a1a632fe61289628992db30f6a6c82026f69ad03843ba527cf762e50df95f86eaae636a6f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
