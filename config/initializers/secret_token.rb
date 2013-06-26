# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

if Rails.env.development? or Rails.env.test?
  Sbonrails::Application.config.secret_token = 'aba09c37435316120529819c7a8edbdfeba6cb8f43dd45858aabd3669913b20c73d7bfa038305f3b76f9d609b20f7b9d79c0ad542c6a04e63c7997f045302925'
else
  Sbonrails::Application.config.secret_token = ENV['SECRET_TOKEN']
end
