# name: discourse-MCPVPAuth
# about: MCPVP login support for Discourse
# version: 0.1
# authors: LVNick, copied from ubuntu login by Sam Saffron, Marco Ceppi

auth_provider :title => 'with MinecraftPVP',
              :authenticator => Auth::OpenIdAuthenticator.new('mcpvp','http://openid.minecraftpvp.com', trusted: true),
              :message => 'Authenticating with MCPVP (make sure pop up blockers are not enbaled)',
              :frame_width => 1000,   # the frame size used for the pop up window, overrides default
              :frame_height => 800

register_css <<CSS

.btn-social.mcpvp {
  background: #c6bbb6;
  font-weight: bold;
  font-size: 18px;
}

.btn-social.mcpvp:before {
  font-family: Arial;
  content: url("http://www.minecraftpvp.com/images/mini_ninja.png");
}

CSS