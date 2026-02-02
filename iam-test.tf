data "aws_iam_policy_document" "test_oidc_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    effect  = "Allow"

    condition {
      test     = "StringEquals"
      variable = "${replace(aws_iam_openid_connect_provider.eks.url, "https://", "")}:sub"
      values   = [var.k8s_service_account]
    }

    principals {
      identifiers = [aws_iam_openid_connect_provider.eks.arn]
      type        = "Federated"
    }
  }
}

resource "aws_iam_role" "test_oidc" {
  assume_role_policy = data.aws_iam_policy_document.test_oidc_assume_role_policy.json
  name               = var.test_role_name
}

resource "aws_iam_policy" "test_policy" {
  name = var.test_policy_name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action   = var.test_policy_actions
      Effect   = "Allow"
      Resource = var.test_policy_resources
    }]
  })
}

resource "aws_iam_role_policy_attachment" "test_attach" {
  role       = aws_iam_role.test_oidc.name
  policy_arn = aws_iam_policy.test_policy.arn
}

output "test_policy_arn" {
  value = aws_iam_role.test_oidc.arn
}
