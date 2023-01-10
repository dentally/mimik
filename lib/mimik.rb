dir = "#{File.dirname(__FILE__)}/mimik"

require "#{dir}/booleans"

class Random
  extend Mimik::Booleans

  # def self.method_missing(methodname)
  #   thing = "#{methodname}.dat"
  #   filename = find_path(thing)

  #   if filename.nil?
  #     super
  #   else
  #     array = []
  #     File.open(filename, 'r') { |f| array = f.read.split(/[\r\n]+/) }
  #     return array.rand
  #   end
  # end

  # private

  # def self.find_path(filename)
  #   $:.each do |path|
  #     new_path = File.join(path,filename)
  #     return new_path if File.exist?(new_path)
  #   end
  #   return nil
  # end
end
