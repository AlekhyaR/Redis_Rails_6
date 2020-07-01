require 'redis'

# Rack::Attack.enabled = false
class Rack::Attack
  throttle('request by ip', limit: 20, period: 60.seconds) do |req|
    req.ip unless req.path.starts_with?('/assets')
  end
end