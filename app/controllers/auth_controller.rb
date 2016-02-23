require 'oauth2'

class AuthController < ApplicationController

  def new
    callback = "http://localhost:3001/auth/callback"
    app_id = "b85e1a0a3103c22700b9ac456aa48c4b3aec5c9b30c4bef6906370a25dadb914"
    secret = "7b2c3cb69e442e730eeeff028a913621f32e9d0b210678671437d1d1c2be86ee"
    client = OAuth2::Client.new(app_id, secret, {:site => "http://me.timelyapp.dev:3000", :authorize_url  => '/api/v1/oauth/authorize',
                                                 :token_url  => '/api/v1/oauth/token',})
    redirect_to client.auth_code.authorize_url(redirect_uri: callback)
  end

  def callback
    callback = "http://localhost:3001/auth/callback"
    app_id = "b85e1a0a3103c22700b9ac456aa48c4b3aec5c9b30c4bef6906370a25dadb914"
    secret = "7b2c3cb69e442e730eeeff028a913621f32e9d0b210678671437d1d1c2be86ee"
    client = OAuth2::Client.new(app_id, secret, {:site => "http://me.timelyapp.dev:3000", :authorize_url  => '/api/v1/oauth/authorize',
                                                 :token_url  => '/api/v1/oauth/token',})
    access = client.auth_code.get_token(params[:code], redirect_uri: callback)
    render :text => access.token
  end
end
