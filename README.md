# xlsb
XLSB R package

This package loads a xlsb file into a dataframe for use in R.
XLSB are used to store simple databases in Excel, greatly reducing the size of the file, but that makes them unreadable by the usual Excel handling packages. The solution is to work with them as databases, using the RODBC package and SQL commands and queries. That is not very practical for the average user. This packages loads the complete file as a standard R dataframe, so that the user can keep his traditional workflow.
