require_relative 'post'

class PostService
  def initialize(repository)
    @repository = repository
  end

  def create (post)
    @repository.save(post)
  end
end