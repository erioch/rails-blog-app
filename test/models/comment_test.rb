require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  setup do
    @article = Article.create(title: 'My article')
  end

  test 'should not save comment without commenter' do
    comment = Comment.new
    comment.article = @article

    assert_not comment.save, 'Saved comment without commenter'
  end

  test 'a comment should belong to an article' do
    comment = Comment.new
    comment.commenter = 'me'

    assert_not comment.save, 'Saved comment not associated to any article'
  end
end
