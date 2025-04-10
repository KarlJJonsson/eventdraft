data "archive_file" "lambda_function" {
  type        = "zip"
  source_file = "../python/src/main.py"
  output_path = "../lambda_function.zip"
}
