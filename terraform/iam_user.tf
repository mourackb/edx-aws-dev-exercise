resource "aws_iam_user" "edx_user" {
  name = "edXProjectUser"

  tags = {
    Project = "edx"
  }
}

resource "aws_iam_access_key" "edx_user_key" {
  user    = aws_iam_user.edx_user.name
  # pgp_key = "keybase:some_person_that_exists"
}

resource "aws_iam_user_policy" "edx_user_policy" {
  name = "test"
  user = aws_iam_user.edx_user.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
        "Sid": "Sid1",
        "Effect": "Allow",
        "Action": [
            "iam:*",
            "rds:*",
            "sns:*",
            "cloudformation:*",
            "rekognition:*",
            "ec2:*",
            "cognito-idp:*",
            "sqs:*",
            "xray:*",
            "s3:*",
            "elasticloadbalancing:*",
            "cloud9:*",
            "lambda:*",
            "tag:GetResources",
            "logs:*",
            "kms:ListKeyPolicies",
            "kms:GenerateRandom",
            "kms:ListRetirableGrants",
            "kms:GetKeyPolicy",
            "kms:ListResourceTags",
            "kms:ReEncryptFrom",
            "kms:ListGrants",
            "kms:GetParametersForImport",
            "kms:ListKeys",
            "kms:GetKeyRotationStatus",
            "kms:ListAliases",
            "kms:ReEncryptTo",
            "kms:DescribeKey"
        ],
        "Resource": "*"
    }
  ]
}
EOF
}
