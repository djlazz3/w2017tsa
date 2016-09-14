class WelcomeController < ApplicationController
  def index
    url = URI.parse("https://developer.api.autodesk.com/authentication/v1/authenticate")
    api_params = {
        :client_id => 'B8HiXLCTwZPGH0XvrBm4vF1u4mAa4PnG',
        :client_secret => '6Z8ETlgDLNzMzWKC',
        :grant_type => 'client_credentials' ,
        :scope => 'bucket:create bucket:read data:write data:read'
    }
    ctx = OpenSSL::SSL::SSLContext.new
    ctx.cert = OpenSSL::X509::Certificate.new(File.read('C:\\Users\\bpadr_000\\Desktop\\w2017tsa\\app\\controllers\\cert.crt'))
    resp = JSON.parse(HTTP.post(url,:form => api_params, :ssl_context => ctx).body)
    @token = resp["access_token"]
    @expiration = resp["expires_in"]

  end
end
