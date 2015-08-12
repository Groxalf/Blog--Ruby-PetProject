require 'active_record'
require_relative '../data_base_connection'

module Infrastructure
  module Migrations
    class CreatePostsTable < ActiveRecord::Migration
      def up
        create_table :posts, id: false do |p|
          p.string :post_id
          p.string :title
          p.string :content
        end
        execute 'ALTER TABLE posts ADD PRIMARY KEY (post_id);'
      end

      def down
        drop_table :posts
      end
    end
  end
end

Infrastructure::Migrations::CreatePostsTable.migrate(ARGV[0])