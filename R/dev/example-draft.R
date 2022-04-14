db.name <- getMtcarsdbPath(copy = TRUE)
rsql <- createRSQL(drv = RSQLite::SQLite(), dbname = db.name)

where_values_df <- data.frame(carb = 8, stringsAsFactors = FALSE)
select_sql <- rsql$gen_select(
  select_fields = "*", # c("wt", "qsec"),
  table = "mtcars",
  where_values = where_values_df
)
mtcars.observed <- rsql$execute_select(select_sql)
mtcars.observed
mtcars.new <- mtcars.observed
mtcars.new$carb <- 9
insert_sql <- rsql$gen_insert(table = "mtcars", values_df = mtcars.new)
rsql$execute_insert(sql_insert = insert_sql)

where_values_df <- data.frame(carb = 9, stringsAsFactors = FALSE)
select_sql <- rsql$gen_select(
  select_fields = "*", # c("wt", "qsec"),
  table = "mtcars",
  where_values = where_values_df
)
mtcars.observed <- rsql$execute_select(select_sql)
mtcars.observed
