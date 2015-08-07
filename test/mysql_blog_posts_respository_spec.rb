require 'rspec'
require 'mysql2'
require_relative '../src/infrastructure/repositories/my_sql_blog_posts_repository'
require_relative '../src/business/post'


describe 'MySQL Blog Posts Repository' do

  before(:each) do
    @connection = Mysql2::Client.new(
        :host => 'localhost',
        :username => 'root',
        :password => '123456',
        :database => 'blog'
    )
  end

  it 'has to save a document' do
    repository = MySQLBlogPostsRepository.new(
      :host => 'localhost',
      :username => 'root',
      :password => '123456',
      :database => 'blog'
    )
    blog_post = Post.new 'any title', 'any content'

    repository.save blog_post

    blog_post = @connection.query("SELECT * FROM posts").to_a[0]
    expect(blog_post['title']).to eq "any title"
    expect(blog_post['content']).to eq "any content"
  end

  after(:each) do
    @connection.query("TRUNCATE posts")
    @connection.close
  end
end