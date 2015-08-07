require 'rspec'
require_relative '../src/business/post_service'
require_relative '../src/business/post'

describe 'Blog Post Service' do
  context 'when create a document' do
    it 'has to save it on the blog' do
      repository = spy 'BlogPostsRepository'
      service = PostService.new repository

      post = Post.new('any title', 'any content')
      service.create post

      expect(repository).to have_received(:save)
    end
  end
end