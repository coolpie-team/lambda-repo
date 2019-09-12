
source ./config.sh

ver=$1

srcFile=$APP_FUNC-$ver.zip

zipFile=build/$srcFile


targetZipFile="$APP_BUCKET/$srcFile"

cmd="aws s3 cp $zipFile $targetZipFile $APP_PROFILE"

echo $cmd

$cmd