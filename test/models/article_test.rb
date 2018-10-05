require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test 'should not save article without title' do
    article = Article.new

    assert_not article.save, 'Saved the article without a title'
  end

  test 'should not save article with title shorter than 5 chars' do
    article = Article.new
    article.title = 'Rail'

    assert_not article.save, 'Saved the article with title not long enough'
  end
end