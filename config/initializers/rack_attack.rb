class Rack::Attack
  throttle('req/ip', limit: 100, period: 1.minutes) do |req|
    req.ip 
  end
end