resource "aws_lambda_function" "executaemr" {
   filename      = "lambda_function_payload.zip" 
   function_name = "${var.lambda_function_name}"
   role          = aws_iam_role.lambda.arn
   handler       = "lambda_function.handler"
   memory_size   = 128
   timeout       = 35

   # ce_code_hash = filebase64sha256("lambda_function_payload.zip")

   runtime = "python3.8"

   tags = {
      IES = "IGTI"
      CURSO = "EDC"
   }

}