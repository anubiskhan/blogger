require "rails_helper"

describe Tag, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
  end

  describe "validations" do
    it {should have_many(:taggings)}
  end
end
