library(RSQL)
rsql <- createRSQL(drv = RSQLite::SQLite(), dbname = db.name)

where.accent <- "áccent"
# where.accent <- "Bélgica"
where.df <- data.frame(model = where.accent, stringsAsFactors = FALSE)
exists.sql <- rsql$gen_select("id_pais",
  table = "pais",
  where_values = where.df
)
exists.sql
re_quote(where.accent)
re_quote(text.df)


sql_gen_where(names(where_values.df), where_values.df)

rm_quotes("áccent")

library(RPostgres)


rsql <- RSQL.class$new(
  drv = RPostgres::Postgres(), dbname = "none",
  user = "ale",  password = "ale",
  host = "localhost",  port = "5432"
)
rsql$connect()
rsql$connect
rsql$execute_select()

valid.conn <- dbCanConnect(
  drv = rsql$driver, dbname = rsql$db.name,
  user = rsql$user, password = rsql$password,
  host = rsql$host, port = rsql$port
)
valid.conn

valid.conn <- dbCanConnect(
  drv = rsql$driver, dbname = "alephbet",
  user = "alephbet", password = "1234",
  host = "localhost", port = "5432"
)

rsql <- RSQL.class$new(
  drv = RPostgres::Postgres(), dbname = "alephbet",
  user = "alephbet", password = "1234",
  host = "localhost", port = "5432"
)
rsql$connect()

example.sql <- rsql$gen_select("*", "symbols")
rsql$execute_select(example.sql)
valid.conn


insert.df <- data.frame(ts = Sys.time())
insert.df$campo_2 <-  "hola"
insert.df$ts
str(insert.df)

rsql <- RSQL.class$new(
  drv = RPostgres::Postgres(), dbname = "alephbet",
  user = "alephbet", password = "1234",
  host = "localhost", port = "5432"
)
rsql$connect()

example.sql <- rsql$gen_insert("tz_table", insert.df)
example.sql



