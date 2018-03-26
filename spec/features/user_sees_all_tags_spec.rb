require "rails_helper"

describe "user sees all tags" do
  describe "they visit /tags" do
    it "displays all tags" do

      tag1 = Tag.create!(name: "Baller")
      tag2 = Tag.create!(name: "Caller")
      tag3 = Tag.create!(name: "Haller")

      visit '/tags'

      expect(page).to have_content(tag1.name)
      expect(page).to have_content(tag2.name)
      expect(page).to have_content(tag3.name)
    end
  end
end
