OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1782765861992157', 'a250afa93535dd365da851dc8d8b8967'
end