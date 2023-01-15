# frozen_string_literal: true

dir = __dir__

Dir.glob(File.join(dir, 'helpers', '*.rb')).sort.each { |file| require file }
Dir.glob(File.join(dir, 'mimik', '*.rb')).sort.each { |file| require file }

module Mimik
  module Config
    class << self
      def locale=(new_locale)
        Thread.current[:config_locale] = new_locale
      end

      def locale(new_locale = nil)
        Thread.current[:config_locale] = new_locale if new_locale
        Thread.current[:config_locale] || :en
      end
    end
  end
end

class Random
  extend Mimik::Booleans
  extend Mimik::Names
  extend Mimik::Addresses
  extend Mimik::Dates
  extend Mimik::ContactInfo
end
