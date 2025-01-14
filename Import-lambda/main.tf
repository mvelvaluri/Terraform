#S3 bucket to store lambda code
resource "aws_s3_bucket" "lambda_bucket" {
  bucket = "mo-lambda-buket"
  acl = "private"
  force_destroy = true

  tags = {
    Name = "LambdaBucket"
  }
  }

# Upload Lambda Code to S3
resource "aws_s3_object" "lambda_code" {
  bucket = aws_s3_bucket.lambda_bucket.id
  key = "lambda_function.zip"
  source = "lambda_function.zip" #Path to your zip file containing lambda code
  etag = filemd5("lambda_function.zip")  
}

# Create IAM Role for Lambda
resource "aws_iam_role" "lambda_exec_role" {
  name = "lambda-exec-role"  

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

#Attach Policy to IAM Role
resource "aws_iam_role_policy_attachment" "lambda_basic_execution" {
  role = aws_iam_role.lambda_exec_role.name
  policy_arn = "arn:aws:iam::aws:policy/AWSLambdaExecute"
# arn:aws:iam::491684899158:role/service-role/test-role-a58giopv
}

resource "aws_lambda_function" "name" {
  function_name = "my_lambda_function"
  runtime = "python3.9"
  role = aws_iam_role.lambda_exec_role.arn
  handler = "lambda_function.lambda_handler"
  s3_bucket = aws_s3_bucket.lambda_bucket.id
  s3_key = aws_s3_object.lambda_code.key
  timeout = 100
  memory_size = 128
 
}