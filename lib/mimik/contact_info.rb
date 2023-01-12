# frozen_string_literal: true

require 'yaml'

module Mimik
  module ContactInfo
    dir = "#{__dir__}/locales"
    @@localised_contact_info = YAML.load_file("#{dir}/contact_info.yml")

    def phone_number
      prefix = @@localised_contact_info["phone_prefixes"].sample
      "#{prefix}#{'%09d' % rand(9 ** 9)}"
    end

    def mobile_number
      prefix = @@localised_contact_info["mobile_prefixes"].sample
      "#{prefix}#{'%09d' % rand(9 ** 9)}"
    end

    def email
      domain = @@localised_contact_info["email_domains"].sample
      "#{first_name.downcase}.#{last_name.downcase}@#{domain}"
    end
  end
end
