library(RSQL)
rsql <- createRSQL(drv = RSQLite::SQLite(), dbname = db.name)

where.accent <- "áccent"
#where.accent <- "Bélgica"
where.df <- data.frame(model = where.accent, stringsAsFactors = FALSE)
exists.sql <- rsql$gen_select("id_pais", table = "pais",
                              where_values = where.df)
exists.sql
re_quote(where.accent)
re_quote(text.df)


sql_gen_where(names(where_values.df), where_values.df)

rm_quotes("áccent")
