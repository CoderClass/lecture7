$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "lecture7"
require "vcr"
require "webmock"

VCR.configure do |config|
  config.cassette_library_dir = "spec/vcr"
  config.hook_into :webmock
  config.allow_http_connections_when_no_cassette = true
end
