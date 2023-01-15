# frozen_string_literal: true

dir = __dir__

Dir.glob(File.join(dir, 'helpers', '*.rb')).sort.each { |file| require file }
Dir.glob(File.join(dir, 'mimik', '*.rb')).sort.each { |file| require file }

module Mimik
  module Config
    class << self
      def locale=(new_locale)
        @@locale = new_locale
      end

      def locale
        @@locale
      end

      # Have seen this done in faker where you can make blocks of code run with a specific locale
      def with_locale(temp_locale = nil)
        current_locale = Mimik::Config.locale
        Mimik::Config.locale = temp_locale
      ensure
        Mimik::Config.locale = current_locale
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
