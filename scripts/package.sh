
source scripts/config.sh

ver=HEAD

#stream="ent-coolpie"

stream=$1

tmpFolder='.tmp'

cp -fr $stream $tmpFolder

cp -fr ent-shared $tmpFolder

cp -fr shared $tmpFolder

zipFile=lambda-$stream-$ver.zip

#cd $ver && zip -r ../build/$zipFile $APP_SOURCES && cd ..
#cd $stream && zip -r ../.build/$zipFile $APP_SOURCES
cd $tmpFolder && zip -r ../.build/$zipFile *  && cd ..
