# frozen_string_literal: true

require 'yaml'

module Mimik
  module Addresses
    dir = "#{__dir__}/locales"
    @@localised_addresses = YAML.load_file("#{dir}/addresses.yml")

    def street_number
      rand(1..9999).to_s
    end

    def street_name
      @@localised_addresses["street_names"].sample + @@localised_addresses["street_types"].sample
    end

    def address_line_1
      "#{street_number} #{street_name}"
    end

    def address_line_2
      "#{@@localised_addresses["add_2_types"].sample} #{rand(999)}"
    end

    def town
      @@localised_addresses["towns"].sample
    end

    def county
      @@localised_addresses["counties"].sample
    end
  end
end
