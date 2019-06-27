## ensure user library exists, or else R will attempt to unstall to /usr/local/lib
#if(!dir.exists(Sys.getenv("R_LIBS_USER"))) {
# dir.create(Sys.getenv("R_LIBS_USER"), recursive = TRUE) }

# ensure /usr/local/lib/R/site-library is writeable first
install.packages("xgboost", repos="https://cran.rstudio.com")
