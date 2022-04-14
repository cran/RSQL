# install.packages("pkgnet")
library(pkgnet)
report2 <- CreatePackageReport(
  pkg_name = "RSQL"
  # , pkg_path = <path to the repo>
)


all.packages <- available.packages()
rsql.package <- all.packages[grep("^RSQL$", all.packages[, 1]), ]
package_dependencies(rsql.package)

library(remotes)

remotes::package_deps("RSQL")
