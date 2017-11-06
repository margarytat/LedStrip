Apiotics.configure do |config|
  config.public_key = '61487566accfb9c6e6455d3ed0600e0d9bb9af51cbf4c0d74cbfcee1f65a6813'
  config.private_key = '06338c1e7d913bd3648b55a47b42d50f738a71cd356d414f73e9d2d7bba6e225'
  config.local_port = 8001
  config.server_port = 8000
  config.tls = true
  config.verify_peer = true
  config.handshake = true
  config.local_logging = true
end