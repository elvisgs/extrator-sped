require 'sequel'
require 'yaml'

Sequel.extension :migration

class DbCreator

  @@default_databases = {
    :postgres => 'template1',
    :mssql => 'master'
  }

  def initialize(db_config, db_name, adapter = :postgres, layout = :fiscal, layout_version)
    @db_config = db_config
    @db_name = db_name
    @adapter = adapter
    @layout = layout
    @layout_version = layout_version
  end

  def exists?
    config = @db_config.clone
    config[:database] = @db_name

    db = Sequel.connect(config)
    db.test_connection
  rescue
    false
  end

  def create
    config = @db_config.clone
    config[:database] = @@default_databases[@adapter]

    Sequel.connect(config) do |db|
      db.run "create database #{@db_name}"
    end

    config[:database] = @db_name

    Sequel.connect(config) do |db|
      Sequel::Migrator.run(db, "migrations/#{@layout}/v#{@layout_version}")
    end
  end
end