namespace :db do
  desc "Drop all tables (except schema_migrations)"
  task delete_everything: :environment do
    puts 'Dropping all tables (except schema_migrations)'
    ActiveRecord::Base.connection.tables.each do |table|
      next if table == 'schema_migrations'

      query = "DROP TABLE IF EXISTS #{table} CASCADE;"
      ActiveRecord::Base.connection.execute(query)
    end
  end
end
