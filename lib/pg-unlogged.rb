require "pg-unlogged/version"
require "active_record/connection_adapters/postgresql/schema_statements"

module PgUnlogged
  module Ext
    private
    def visit_TableDefinition(o)
      super.tap do |sql|
        next unless Rails.env.test? || ENV['unlogged']
        sql.gsub!(/(create) (\w+ )?(table)/i, '\1 UNLOGGED \2\3')
      end
    end
  end

  ActiveRecord::ConnectionAdapters::PostgreSQL::SchemaCreation.include Ext
end
