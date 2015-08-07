class CreateBlogPost
  def initialize(service)
    @service = service
  end

  def create_blog_post(post)
    @service.create(post)
  end
end