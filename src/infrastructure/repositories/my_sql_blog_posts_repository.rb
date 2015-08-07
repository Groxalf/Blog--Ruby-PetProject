require 'mysql2'

class MySQLBlogPostsRepository

  def initialize data_connection
    @connection = Mysql2::Client.new data_connection
    puts @connection.server_info
  end

  def save post
    @connection.query(
        'INSERT posts(title, content) VALUES ("' + post.title + '", "' + post.content + '");'
    )
    @connection.close
  end

end