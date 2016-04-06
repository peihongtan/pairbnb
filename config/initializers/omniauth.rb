Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']#, :scope => 'public_profile,email', :display => 'popup', :info_fields => 'name,email'
  # scope: => 'email' info_fields: 'email'
 
end