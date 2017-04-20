require 'sequel'

Sequel.extension :migration

class DbTools
  DEFAULT_DATABASES = {
    ado: 'master',
    mysql2: 'mysql',
    postgres: 'template1'
  }.freeze

  def initialize(db_config, db_name, layout, layout_version)
    @db_config = db_config
    @db_name = db_name
    @layout = layout
    @layout_version = layout_version
  end

  def exists?
    config = @db_config.merge(database: @db_name)
    db = Sequel.connect(config)
    db.test_connection
  rescue
    false
  end

  def create
    adapter = @db_config[:adapter]
    config = @db_config.merge(database: DEFAULT_DATABASES[adapter])

    Sequel.connect(config) do |db|
      db.run "create database #{@db_name}"
    end

    config[:database] = @db_name

    Sequel.connect(config) do |db|
      Sequel::Migrator.run(db, "migrations/#{@layout}/v#{@layout_version}")

      db.drop_table? :schema_info
    end
  end
end
