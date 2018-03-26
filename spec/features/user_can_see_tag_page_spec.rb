require "rails_helper"

describe "user sees a tag page" do
  describe "they visit certain tag link" do
    it "displays tag information" do
      article = Article.create!(title: "Baller Title", body: "Baller Body")
      tag = Tag.create!(name: "Baller")
      tagging = Tagging.create!(article_id: article.id, tag_id: tag.id)

      visit article_path(article)
      click_on tag.name

      expect(page).to have_content("Baller")
    end
  end
end
