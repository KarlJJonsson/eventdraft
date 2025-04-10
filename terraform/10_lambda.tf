resource "aws_lambda_function" "test_lambda" {
  filename         = "../lambda_function.zip"
  function_name    = "MyTestLambda"
  role             = aws_iam_role.lambda_role.arn
  handler          = "main.main"
  source_code_hash = data.archive_file.lambda_function.output_base64sha256
  runtime          = "python3.11"
}
