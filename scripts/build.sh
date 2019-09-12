zipname=hello1

srcFile=$zipname.zip
zip $srcFile index.js


# ARN: arn:aws:s3:::coolpie-test-bucket


profile="--profile aws-ramot"


bucketFolder='s3://coolpie-test-bucket/lambda'

aws s3 cp $srcFile $bucketFolder/$srcFile $profile








