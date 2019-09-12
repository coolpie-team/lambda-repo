
source ./config.sh


#invokeType=DryRun
invokeType=RequestResponse

filePayload=$1

payloadData=`cat $filePayload`

echo $payloadData

#payload="--payload $payloadData"

payload="--payload file://$filePayload"

outFile="$APP_FUNC.out"

cmd="aws lambda invoke --function-name $APP_FUNC --invocation-type $invokeType $payload $APP_PROFILE $outFile"

echo $cmd

$cmd

cat $outFile








