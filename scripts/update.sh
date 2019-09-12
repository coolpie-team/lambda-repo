
source ./config.sh


ver=$1

srcFile=$APP_FUNC-$ver.zip

targetZipFile="$APP_BUCKET/$srcFile"



publish="--publish"
#publish="--no-publish"

#  update-function-code
#--function-name <value>
#[--zip-file <value>]
#[--s3-bucket <value>]
#[--s3-key <value>]
#[--s3-object-version <value>]
#[--publish | --no-publish]
#[--dry-run | --no-dry-run]
#[--revision-id <value>]
#[--cli-input-json <value>]
#[--generate-cli-skeleton <value>]


#--code "S3Bucket=string,S3Key=string,S3ObjectVersion=string"

s3Key="$APP_LAMBDA_FOLDER/$srcFile"

code="--s3-bucket $APP_BUCKET_ROOT --s3-key $s3Key"


#aws lambda create-function --function-name $funcName --code $code --runtime $runtime --handler $handler --role=$role --zip-file $zipFile $publish  $profile


cmd="aws lambda update-function-code --function-name $APP_FUNC $code $publish $APP_PROFILE"

echo $cmd

$cmd



