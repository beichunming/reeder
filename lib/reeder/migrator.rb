require 'sequel'

module Reeder
  class Migrator
    def self.migrate!
      ENV['DATABASE_URL'] ||= "sqlite://db/reeder-#{ ENV['LOTUS_ENV'] }.db"
      db = Sequel.connect(ENV['DATABASE_URL'])

      db.create_table! :feeds do
        primary_key :id
        String :url
        String :title
      end

      db.create_table! :articles do
        primary_key :id
        Integer :feed_id
        String  :guid
        String  :url
        String  :title
      end
    end
  end
end
