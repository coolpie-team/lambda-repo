
source scripts/config.sh



#stream="ent-coolpie"

stream=$1

ver=$2

tmpFolder='.tmp'

cp -fr $stream $tmpFolder

cp -fr ent-shared $tmpFolder

cp -fr shared $tmpFolder

#zipFile=lambda-$stream-$ver.zip
zipPrefix=lambda-$stream
zipFile=$zipPrefix.zip

#cd $ver && zip -r ../build/$zipFile $APP_SOURCES && cd ..
#cd $stream && zip -r ../.build/$zipFile $APP_SOURCES
cd $tmpFolder && zip -r ../.build/$zipFile *  && cd ..

cp .build/$zipFile .build/$zipPrefix-$ver.zip
