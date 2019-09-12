
source ./config.sh


ver=$1

srcFile=$APP_FUNC-$ver.zip

targetZipFile="$APP_BUCKET/$srcFile"


#--code "S3Bucket=string,S3Key=string,S3ObjectVersion=string"

s3Key="$APP_LAMBDA_FOLDER/$srcFile"

code="S3Bucket=$APP_BUCKET_ROOT,S3Key=$s3Key"

publish="--publish"
#publish="--no-publish"


#aws lambda create-function --function-name $funcName --code $code --runtime $runtime --handler $handler --role=$role --zip-file $zipFile $publish  $profile


cmd="aws lambda create-function --function-name $APP_FUNC --code $code --runtime $APP_RUNTIME --handler $APP_HANDLER --timeout $APP_TIMEOUT --role $APP_ROLE $publish  $APP_PROFILE"

echo $cmd

$cmd



