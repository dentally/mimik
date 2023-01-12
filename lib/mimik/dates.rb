# frozen_string_literal: true

require 'date'

module Mimik
  module Dates
    def date_between(range)
      Date.parse(range.to_a.sample.to_s)
    end
  end
end
