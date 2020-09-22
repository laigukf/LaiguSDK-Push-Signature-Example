require 'base64'
require 'openssl'

# In rack apps that include Rails and Sinatra,
# raw_data is request.raw_body which only can be read once.
class LaiguSignTools
  def initialize(key)
    @key = key
  end

  def sign(raw_body)
    hash_str = OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'), @key, raw_body)
    sign_str = Base64.urlsafe_encode64(hash_str)
    "laigu_sign:#{sign_str}"
  end
end
