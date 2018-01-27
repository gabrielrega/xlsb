#' Loads a XLSB file
#' @description  This is the basic function of the package, wich reads the xlsb files as a database using RODBC.
#'
#' @param x A filename or filepath.
#' @return A dataframe containing data stored in the file.
#' @examples
#' DT <- read_xlsb("data/march.xlsb")
#' DT <- read_xlsb("march.xlsb")

read_xlsb <- function(x) {
  wb <- x
  con <- RODBC::odbcConnectExcel2007(wb)
  tables <- RODBC::sqlTables(con)
  sheet <- tables$TABLE_NAME[1]
  data <- RODBC::sqlFetch(con, sheet, as.is = c(TRUE,TRUE,TRUE,TRUE))
  RODBC::odbcCloseAll()
  return (data)
}
