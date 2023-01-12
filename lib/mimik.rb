dir = "#{File.dirname(__FILE__)}/mimik"

require "#{dir}/booleans"
require "#{dir}/names"
require "#{dir}/addresses"
require "#{dir}/dates"
require "#{dir}/contact_info"

class Random
  extend Mimik::Booleans
  extend Mimik::Names
  extend Mimik::Addresses
  extend Mimik::Dates
  extend Mimik::ContactInfo
end
