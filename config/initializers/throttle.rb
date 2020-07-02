# config/initializers/throttle.rb

require "redis"

redis_conf  = YAML.load(File.join(Rails.root, "config", "redis.yml"))
REDIS = Redis.new(:host => redis_conf["host"], :port => redis_conf["port"])

THROTTLE_TIME_WINDOW = 1 * 3
THROTTLE_MAX_REQUESTS = 3
REMOTE_ADDR = '1.2.4.89'