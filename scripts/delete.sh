
source ./config.sh

cmd="aws lambda delete-function --function-name $APP_FUNC $APP_PROFILE"

echo $cmd

$cmd



