warn "Jdbc-Filemaker is only for use with JRuby" if (JRUBY_VERSION.nil? rescue true)
require 'jdbc/filemaker/version'

module Jdbc
  module Filemaker

    def self.driver_jar
      "fmjdbc.jar"
    end

    def self.load_driver(method = :load)
      send method, driver_jar
    end

    def self.driver_name
      'com.filemaker.jdbc.Driver'
    end

    if defined?(JRUBY_VERSION) && # enable backwards-compat behavior :
      ( Java::JavaLang::Boolean.get_boolean("jdbc.driver.autoload") ||
        Java::JavaLang::Boolean.get_boolean("jdbc.filemaker.autoload") )
      warn "autoloading JDBC driver on require 'jdbc/filemaker'" if $VERBOSE
      load_driver :require
    end
  end
end
