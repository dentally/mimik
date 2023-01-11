# frozen_string_literal: true

RSpec.describe Random do
  it "should generate a boolean" do
    expect(Random.boolean).to be_boolean
  end

  it "should generate a random male first name" do
    expect(Random.first_name_male).to be_a(String)
  end

  it "should generate a random female first name" do
    expect(Random.first_name_female).to be_a(String)
  end

  it "should generate a random last name" do
    expect(Random.last_name).to be_a(String)
  end
end
