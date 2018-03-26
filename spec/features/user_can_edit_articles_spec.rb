require "rails_helper"

describe "user edits an article" do
  describe "they link from a show page" do
    describe "they fill in an edit field and submit" do
      it "displays the updated information on a show" do
        article = Article.create!(title: "my title", body: "my body")

        visit article_path(article)
        click_link "Edit"

        fill_in "article[title]", with: "better title"
        fill_in "article[body]", with: "better body"
        click_on "Update Article"

        expect(current_path).to eq(article_path(article))
        expect(page).to have_content("better title")
        expect(page).to have_content("better body")
        expect(page).to have_content("Article better title was Updated.")
      end
    end
  end
end
