# frozen_string_literal: true

require 'yaml'

module Mimik
  module Names
    dir = "#{__dir__}/locales"
    @@localised_names = YAML.load_file("#{dir}/names.yml")

    def first_name_male
      @@localised_names["male_first_name"].sample
    end

    def first_name_female
      @@localised_names["female_first_name"].sample
    end

    def last_name
      @@localised_names["last_name"].sample
    end
  end
end
