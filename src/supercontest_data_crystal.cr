require "./supercontest_data_crystal/*"
require "kemal"
require "pg"
require "json"

DB = PG.connect("postgres://shailpatel@localhost:5432/supercontest_data")

get "/" do |env|
  env.response.content_type = "application/json"
  result = DB.exec({Int32, String}, "SELECT id, name FROM teams")
  hash = { "data" => result.to_hash }
  hash.to_json
end

Kemal.run
