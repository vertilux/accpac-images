ActiveRecord::Base.establish_connection(
  adapter: "sqlserver",
  host: ENV['VERTILUX_DB_HOST'],
  database: ENV['VERTILUX_DB_NAME'],
  username: ENV['VERTILUX_DB_USERNAME'],
  password: ENV['VERTILUX_PASSWD']
)
