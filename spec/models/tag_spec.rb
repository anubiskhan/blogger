require "rails_helper"

describe Tag, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
  end

  describe "relationships" do
    it {should have_many(:taggings)}
  end

  describe "instance methods" do
    describe "#to_s" do
      it "returns string of tag name" do
        tag = Tag.create!(name: 'A tag')

        expect(tag.to_s).to eq(tag.name)
      end
    end
  end
end
