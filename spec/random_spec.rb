# frozen_string_literal: true

RSpec.describe Random do
  it "should generate a boolean" do
    expect(Random.boolean).to be_boolean
  end

  it "should generate a random first name" do
    p Random.first_name_male
    true
  end
end
