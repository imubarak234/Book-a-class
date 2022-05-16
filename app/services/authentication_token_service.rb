class AuthenticationTokenService
  HMAC_SECRET = 'my$ecretK3y'
  ALGORITHM_TYPE = 'HS256'

  def self.call(user_ids)
    
    payload = { user_id: user_ids }

    JWT.encode payload, HMAC_SECRET, ALGORITHM_TYPE
  end

  def self.decode(token)
    decoded_token = JWT.decode token, HMAC_SECRET, true, { algorithm: ALGORITHM_TYPE }
    decoded_token[0]['user_id']
  end
end

#decoded_token = JWT.decode token, hmac_secret, true, { algorithm: 'HS256' }