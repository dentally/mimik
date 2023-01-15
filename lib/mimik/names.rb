# frozen_string_literal: true

require 'yaml'

module Mimik
  module Names
    # TODO: This should work, but currently is getting blocked by the config error
    # New method
    dir = Mimik::LocalePath.new("names").path

    # Old method
    # dir = "#{__dir__}/locales"

    # New method
    @@localised_names = YAML.load_file(dir)

    # Old method
    # @@localised_names = YAML.load_file("#{dir}/names.yml")

    @@first_names = @@localised_names["male_first_name"] + @@localised_names["female_first_name"]

    def first_name_male
      @@localised_names["male_first_name"].sample.capitalize
    end

    def first_name_female
      @@localised_names["female_first_name"].sample.capitalize
    end

    def last_name
      @@localised_names["last_name"].sample.capitalize
    end

    def first_name
      @@first_names.sample.capitalize
    end
  end
end
