require 'rspec'
require 'rspec/mocks'



class PostService
  def create (post); end
end

class CreateBlogPost

  def initialize(service)
    @service = service
  end

  def create_blog_post(post)
    @service.create(post)
  end
end

class Post

  def initialize(title, content)
    @title = title
    @content = content
  end

end


describe 'Create Blog Post' do
  it 'has to save the post in our blog when created' do
    post = Post.new('anyTitle', 'anyContent')
    service = spy('postservice')
    CreateBlogPost.new(service).create_blog_post(post)
    expect(service).to have_received :create
  end
end
