# frozen_string_literal: true

RSpec.describe Mimik do
  it "has a version number" do
    expect(Mimik::VERSION).not_to be nil
  end

  it "should store locale" do
    Mimik::Config.locale = "AU"
    expect(Mimik::Config.locale).to eq("AU")
  end
end
