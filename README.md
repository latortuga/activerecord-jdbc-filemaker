# jdbc-filemaker, a JDBC driver for JRuby and Filemaker

ActiveRecord adapter to access Filemaker 14 database using JDBC.

See [ActiveRecord JDBC Adapter](https://github.com/jruby/activerecord-jdbc-adapter#using-activerecord-jdbc) for configuration.

# Quick Start

* Install

  ```ruby
  gem 'activerecord-jdbc-adapter'
  gem 'jdbc-filemaker'
  ```

  ```sh
  bundle [install]
  ```

* Use gem

  ```ruby
  # e.g. config/application.rb

  require 'jdbc/filemaker'
  Jdbc::Filemaker.load_driver
  ```
