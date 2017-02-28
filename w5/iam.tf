/*

# IAM role that will be used by Lambda functions to communicate with AWS resources.

# Specify missing or incomplete arguments according to documentation:
# Docs: https://www.terraform.io/docs/providers/aws/r/iam_role.html
resource "aws_iam_role" "" {
  name =
  assume_role_policy = <<EOF
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "" {
  name =
  role =
  policy = <<EOF
{
  "Statement": [
   {
     "Effect": "Allow",
     "Action": [
       "logs:*"
     ],
     "Resource": "arn:aws:logs:*:*:*"
   },
   {
     "Effect": "Allow",
     "Action": [
       "ec2:*"
     ],
     "Resource": "*"
   }
  ]
}
EOF
}

*/
