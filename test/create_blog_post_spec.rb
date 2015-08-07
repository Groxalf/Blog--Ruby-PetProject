require 'rspec'
require 'rspec/mocks'
require_relative '../src/business/post_service.rb'
require_relative '../src/actions/create_blog_post.rb'
require_relative '../src/business/post.rb'


describe 'Create Blog Post' do
  context 'when create a post' do
    let(:title) {'anyTitle'}
    let(:content) {'anyContent'}
    it 'has to save it in the blog' do
      post = Post.new('anyTitle', 'anyContent')
      service = spy('PostService')
      CreateBlogPost.new(service).create_blog_post(post)
      expect(service).to have_received :create
    end
  end
end
