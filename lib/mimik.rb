dir = "#{File.dirname(__FILE__)}/mimik"

require "#{dir}/booleans"
require "#{dir}/names"
require "#{dir}/addresses"

class Random
  extend Mimik::Booleans
  extend Mimik::Names
  extend Mimik::Addresses
end
