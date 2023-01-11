# frozen_string_literal: true

RSpec.describe Random do
  context "booleans" do
    it "should generate a boolean" do
      expect(Random.boolean).to be_boolean
    end
  end

  context "names" do
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

  context "addresses" do
    it "should generate a random street number" do
      expect(Random.street_number).to be_a(String)
    end

    it "should generate a random street name" do
      expect(Random.street_name).to be_a(String)
    end

    it "should generate a random address line 1" do
      expect(Random.address_line_1).to be_a(String)
    end

    it "should generate a random address line 2" do
      expect(Random.address_line_2).to be_a(String)
    end

    it "should generate a random town" do
      expect(Random.town).to be_a(String)
    end

    it "should generate a random county" do
      expect(Random.county).to be_a(String)
    end
  end
end
