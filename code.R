Sys.setenv(
  "AWS_ACCESS_KEY_ID" = '',
  "AWS_SECRET_ACCESS_KEY" = '',
  "AWS_DEFAULT_REGION" = ""
)



# Read the data from the S3 bucket
test_data <- aws.s3::s3read_using(
  FUN = read.csv,
  object = 'Monthly turnover, current prices - seasonally adjusted estimate.csv',
  bucket = '',
  header = FALSE,   # Skip using the first row as header to clean up data later
  stringsAsFactors = FALSE
)


