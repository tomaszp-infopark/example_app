Fiona7.configure do |config|
  config.instance = 'reactor'
  config.host     = '33.33.33.10'
  config.port     = 6001
  config.username = 'root'
  config.secret   = 'MYSECRET'

  config.mode     = :standalone
end
