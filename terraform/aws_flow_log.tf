resource "aws_flow_log" "this" {
  iam_role_arn    = aws_iam_role.vpc_flow_logs.arn
  log_destination = aws_cloudwatch_log_group.vpc_main.arn
  traffic_type    = "ALL"
  vpc_id          = aws_vpc.main.id
}
#