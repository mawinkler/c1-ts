resource "aws_sns_topic" "cloudwatch_alarm" {
  name         = var.topic_name
  display_name = var.topic_display_name
}

resource "aws_sns_topic_subscription" "account_email" {
  endpoint  = local.this_account_email
  protocol  = "email"
  topic_arn = aws_sns_topic.cloudwatch_alarm.arn
}