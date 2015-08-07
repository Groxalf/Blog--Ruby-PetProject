class Post
  attr_reader :content, :title

  def initialize(title, content)
    @title = title
    @content = content
  end
end