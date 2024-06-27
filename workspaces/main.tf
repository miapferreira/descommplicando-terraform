resource "aws_sqs_queue" "maf_queue_dlq" {
  name                      = "my-dlq"
  delay_seconds             = 90
  max_message_size          = 2048
  message_retention_seconds = 86400
  visibility_timeout_seconds = 40
}

resource "aws_sqs_queue" "maf_queue" {
    name = "maf-queue"
    delay_seconds = 90
    max_message_size = 2048
    message_retention_seconds = 86400
    receive_wait_time_seconds = 10
    visibility_timeout_seconds = 30
    redrive_policy = jsonencode({
        deadLetterTargetArn = aws_sqs_queue.maf_queue_dlq.arn
        maxReceiveCount = 5
    })
 
}