dir = "#{File.dirname(__FILE__)}/mimik"

require "#{dir}/booleans"
require "#{dir}/names"

class Random
  extend Mimik::Booleans
  extend Mimik::Names
end
