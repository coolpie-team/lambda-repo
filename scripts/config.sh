

#APP_FUNC=hello1

#APP_SOURCES="index.js";
APP_SOURCES="node_modules/* *.js *.json ../ent-shared/* ../shared";

#set to maximum (15 minutes)
APP_TIMEOUT=900;


APP_PROFILE="--profile aws-ramot"

APP_BUCKET_ROOT="coolpie-test-bucket"

APP_LAMBDA_FOLDER=lambda

APP_BUCKET="s3://$APP_BUCKET_ROOT/$APP_LAMBDA_FOLDER"

# ARN: arn:aws:s3:::coolpie-test-bucket

APP_RUNTIME=nodejs10.x

APP_HANDLER=index.handler

APP_ROLE='arn:aws:iam::856421899839:role/lambda-coolpie-role'

